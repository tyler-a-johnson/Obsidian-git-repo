
# C
## ATmega328P
### ELEC3042 Major - Pass Requirements Only - Really suboptimal but functional
```c
/*
/*
 * File:   Major_Pass.c
 * Author: Tyler Johnson
 * SID: 46978518
 */

//==============Header files==============
#include <xc.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include "LCD_Header.h"

//=============Variables=================


//Define primary state machine phases - I chose to make one large state machine as opposed to
//smaller ones for simplicity of coding
enum PHASE {HZD, MSS, MSR, SRM, MSS_2_MSR, MSS_2_SRM, MSR_2_SRM, MSR_2_MSS, SRM_2_MSS, SRM_2_MSR};
enum PHASE curr_phase = HZD;    //Variable for current state - Gets updated with next state at the end of while loop
enum PHASE next_phase = HZD;    //Variable for storing the next_phase we are moving to

//======== Variables, Definitions and Macros ========//

//Macros for buttons
#define S0 0b00000001       //Define macro for S0
#define S1 0b00010000       //Define macro for S1
#define S2 0b00000001       //Define macro for S2
#define S3 0b00010000       //Define macro for S3
#define S4 0b00001000       //Define macro for S4
#define S5 0b01000000       //Define macro for S5
#define S6 0b00000001       //Define macro for S6

//Macros for Port Expander Address
#define GPIOA 0x12          //Define macro for GPIOA address
#define GPIOB 0x13          //Define macro for GPIOB address
#define INTCAPA 0x10        //Define macro for INTCAPA address
#define INTCAPB 0x11        //Define macro for INTCAPB address

//Macros for light values - Makes reffering to specific values easier
#define MSNG 0b00100000     //Main Street North Green
#define MSNY 0b01000000     //Main Street North Yellow
#define MSNR 0b10000000     //Main Street North Red

#define MSSG 0b00000010     //Main Street South Green
#define MSSY 0b00000100     //Main Street South Yellow
#define MSSR 0b00001000     //Main Street South Red

#define SRMR 0b10000000     //School Road (to) Main Green
#define SRMY 0b01000000     //School Road (to) Main Yellow
#define SRMG 0b00100000     //School Road (to) Main Red

//For some reason MSTR is already defined somewhere else
//These are meant to be MSTR and friends but I've changed
//the "phase" name for MST is represented as MSR
#define MSRR 0b00001000     //Main Street Right (Turn) Red
#define MSRY 0b00000100     //Main Street Right (Turn) Yellow
#define MSRG 0b00000010     //Main Street Right (Turn) Green

//Timer variables
volatile uint32_t timer2_ms_counter = 0;        //Counter to store time in ms for determining time periods
volatile uint32_t HZD_ms_counter = 0;           //Counter to store time in ms for Hazard State
volatile uint16_t time_period_value = 1000;     //Initial value for time_period - set to 1000 so TP = 1sec initially
volatile uint32_t time_periods_elapsed = 0;     //Counter for how many time periods have elapsed, will be reset on state transition
volatile uint32_t time_periods_elapsed_LCD = 0; //Counter incremented at the same rate as @time_periods_elapsed for displaying on the LCD screen

//Interrupt flags for handling inputs
volatile uint8_t Expander_Interrupt_Occured = 0;    //Interrupt Flag for INT0 external interrupt
volatile uint8_t PCINT_Occured = 0;                 //Interrupt Flag for PCINT0

//Variables for storing values from INCAP registers
volatile uint8_t INTCAPA_Flag = 0;
volatile uint8_t INTCAPB_Flag = 0;

//Variables for controlling LEDs, used instead of spi_send() commands to make
//code more efficient. We only need to use spi_send() twice per loop using these variables as inputs
volatile uint8_t GPIOA_LEDs = 0b00000000;
volatile uint8_t GPIOB_LEDs = 0b00000000;

//Button Flags for each input
volatile uint8_t ButtonS6_Flag = 0;
volatile uint8_t ButtonS5_Flag = 0;
volatile uint8_t ButtonS4_Flag = 0;
volatile uint8_t ButtonS3_Flag = 0;
volatile uint8_t ButtonS2_Flag = 0;
volatile uint8_t ButtonS1_Flag = 0;
volatile uint8_t ButtonS0_Flag = 0;

//Address for the LCD display, used for I2C communication - function wont work if I use # define
uint8_t LCD_Addr = 0x27;

//Just a couple of strings up to no good (For LCD display)
char str_HZD[] = "HZD ";
char str_MSS[] = "MSS";
char str_MST[] = "MST";
char str_SRM[] = "SRM";

//Letters for printing to LCD display
uint8_t theLetterG = 71;
uint8_t theLetterY = 89;
uint8_t theLetterR = 82;

//Function for transferring data to the port expander and returning synchronously
uint8_t spi_transfer(uint8_t data) {
    SPDR = data;
    while ((SPSR & _BV(SPIF)) == 0) {
        ; // wait until transfer completed
    }
    return SPDR;
}

//Function for sending data to the port expander
void spi_send(uint8_t reg, uint8_t data) {
    // Send a command + byte to SPI interface

    PORTB &= ~_BV(2);   //SS enabled (low))

    spi_transfer(0x40); //Send Opcode + Write Bit
    spi_transfer(reg);  //Send MCP23S17 register address
    spi_transfer(data); //Transfer data to the selected register

    PORTB |= _BV(2);    //SS disabled (high)
}

//Function for reading data from the port expander
uint8_t spi_read(uint8_t reg) {
    uint8_t data;           //Define new variable for data

    PORTB &= ~_BV(2); // SS enabled (low))

    spi_transfer(0x41);     // Send Opcode + Read Bit
    spi_transfer(reg);      // Send MCP23S17 register address
    data = spi_transfer(0); // Send 0 to get values from the Port Expander

    PORTB |= _BV(2); // SS disabled (high)      
    
    return data;//Return data
}

//A function for setting up SPI communication 
void setup_spi() {
   DDRB |= (1 << DDB3) | (1 << DDB5) | (1 << DDB2); //Set Data Direction Register
   PORTB |= (1 << PB2);                             //Set Pullup resistors

   //Enable SPI by setting SPE - Make ATmega328P Master by setting MSTR
   SPCR |= (1 << SPE) | (1 << MSTR);

   //Set CPOL to 0 - SCK is low on idle
   SPCR &= ~(1 << CPOL);
   
   //Set CPHA to 0 - Samples data on leading edge of SCK and sets up on the trailing edge
   SPCR &= ~(1 << CPHA);

   //Set SPI2X - Double Speed SPI
   SPSR |= (1 << SPI2X);
}

// Set Timer2 to CTC mode with a prescaler of 64 to generate an interrupt every 1ms
void setup_timer2() {
    TCCR2A = (1 << WGM21);

    // Set prescaler to 64
    TCCR2B = (1 << CS22);

    // Set compare value
    OCR2A = 250;

    // Enable compare match interrupt
    TIMSK2 = (1 << OCIE2A);
}

//A function for setting up the port expander, setting up data direction registers and pullup resistors
void setup_PortExpander() {
    
           spi_send(0x0A, 0b01000000);  //IOCONA
           spi_send(0x0B, 0b01000000);  //IOCONB

           spi_send(0x00, 0b00010001);  //IODIRA
           spi_send(0x01, 0b00010001);  //IODIRB

           spi_send(0x02, 0b00010001);  //IPOLA
           spi_send(0x03, 0b00010001);  //IPOLB

           spi_send(0x0C, 0b00010001);  //GPPUA - Setup pullup resistors for buttons (GPIOA 0 and 4)
           spi_send(0x0D, 0b00010001);  //GPPUB - Setup pullup resistors for buttons (GPIOB 0 and 4)

           spi_send(0x04, 0b00010001);  //GPINTENA
           spi_send(0x05, 0b00010001);  //GPINTENB

           //Do a dummy read of INTCAP A and B to clear associated flags
           //and prevent an initial interrupt from running.
           spi_read(INTCAPA);
           spi_read(INTCAPB);
}

/*Function for setting up ADC for the potentiometer input 
* ISSUE - When using free running mode, reading from ADCH stops the current conversion, meaning inaccuracies occur. Use manual trigger instead.
* ALSO - Figure out how to do manual trigger (WHAT DO I SET ADMUX TO)
*/
void setup_ADC() {
    ADMUX = 0b01100000;
    ADCSRA = 0b11100110;    //Free running mode - It works so Im not touching it
    ADCSRB = 0;
    
    DIDR0 = 0b00000001;
}

/*  Function to update LEDs to reflect the current state of LED flags
 *  Reduces the amount of time spent sending data to the port expander
 */
void updateLEDs(){
    spi_send(GPIOA, GPIOA_LEDs);
    spi_send(GPIOB, GPIOB_LEDs);
}

void updateLCD(){
    
    //Code for writing curr_phase to the LCD - since curr_state can only have one value at a time.
    LCD_Position(LCD_Addr, 0x40);
    if (curr_phase == HZD){
            LCD_Write(LCD_Addr, str_HZD, 4);
    }
    if (curr_phase == MSS){
            LCD_Write(LCD_Addr, str_MSS, 3);
            LCD_Write_Chr(LCD_Addr, theLetterG);
    }
    if (curr_phase == MSR){
            LCD_Write(LCD_Addr, str_MST, 3);
            LCD_Write_Chr(LCD_Addr, theLetterG);
    }
    if (curr_phase == SRM){
            LCD_Write(LCD_Addr, str_SRM, 3);
            LCD_Write_Chr(LCD_Addr, theLetterG);       
    }
    
    //Code for displaying 0 (0x58) if button isn't pressed or X (0x4F) if it is.
    LCD_Position(LCD_Addr, 0x00);
    if(ButtonS0_Flag == 1){
        LCD_Write_Chr(LCD_Addr, 0x58);      //If button S0 is pressed we print X
    } else {LCD_Write_Chr(LCD_Addr, 0x4F);} //Else print O
    
    LCD_Position(LCD_Addr, 0x01);
    if(ButtonS1_Flag == 1){
        LCD_Write_Chr(LCD_Addr, 0x58);      //If button S1 is pressed we print X
    } else {LCD_Write_Chr(LCD_Addr, 0x4F);} //Else print O
    
    LCD_Position(LCD_Addr, 0x02);
    if(ButtonS2_Flag == 1){
        LCD_Write_Chr(LCD_Addr, 0x58);      //If button S2 is pressed we print X
    } else {LCD_Write_Chr(LCD_Addr, 0x4F);} //Else print O
    
    LCD_Position(LCD_Addr, 0x03);
    if(ButtonS3_Flag == 1){
        LCD_Write_Chr(LCD_Addr, 0x58);      //If button S3 is pressed we print X
    } else {LCD_Write_Chr(LCD_Addr, 0x4F);} //Else print O
    
    LCD_Position(LCD_Addr, 0x04);
    if(ButtonS4_Flag == 1){
        LCD_Write_Chr(LCD_Addr, 0x58);      //If button S4 is pressed we print X
    } else {LCD_Write_Chr(LCD_Addr, 0x4F);} //Else print O
    
    LCD_Position(LCD_Addr, 0x05);
    if(ButtonS5_Flag == 1){
        LCD_Write_Chr(LCD_Addr, 0x58);      //If button S5 is pressed we print X
    } else {LCD_Write_Chr(LCD_Addr, 0x4F);} //Else print O
    
    LCD_Position(LCD_Addr, 0x06);
    if(ButtonS6_Flag == 1){
        LCD_Write_Chr(LCD_Addr, 0x58);      //If button S6 is pressed we print X
    } else {LCD_Write_Chr(LCD_Addr, 0x4F);} //Else print O
    
    /*By adding 48 to each number, we get the value of the initial 
     * number in HEX so we don't need to convert to a string or chr
    */
    LCD_Position(LCD_Addr, 15);
    LCD_Write_Chr(LCD_Addr, (time_periods_elapsed_LCD % 10)+48);
    
    LCD_Position(LCD_Addr, 14);
    LCD_Write_Chr(LCD_Addr, ((time_periods_elapsed_LCD % 100)/10)+48);
    
    LCD_Position(LCD_Addr, 13);
    LCD_Write_Chr(LCD_Addr, ((time_periods_elapsed_LCD % 1000)/100)+48);
    
    LCD_Position(LCD_Addr, 12);
    LCD_Write_Chr(LCD_Addr, ((time_periods_elapsed_LCD % 10000)/1000)+48);
    
    LCD_Position(LCD_Addr, 11);
    LCD_Write_Chr(LCD_Addr, ((time_periods_elapsed_LCD % 100000)/10000)+48);
    
    //Print period to display - for testing and because who's gonna stop me
    LCD_Position(LCD_Addr, 0x4C);
    LCD_Write_Chr(LCD_Addr, ((time_period_value % 10000)/1000)+48);
    
    LCD_Position(LCD_Addr, 0x4D);
    LCD_Write_Chr(LCD_Addr, ((time_period_value % 1000)/100)+48);
    
    LCD_Position(LCD_Addr, 0x4E);
    LCD_Write_Chr(LCD_Addr, ((time_period_value % 100)/10)+48);
    
    LCD_Position(LCD_Addr, 0x4F);
    LCD_Write_Chr(LCD_Addr, ((time_period_value % 10))+48);
}


//Function to reset timers relevant to the state machine
//to be called at each state transition
void resetTimer(){
    timer2_ms_counter = 0;
    time_periods_elapsed = 0;
    HZD_ms_counter = 0;
}

void checkButtonInputs(){
    INTCAPA_Flag = spi_read(GPIOA);   //Read INTCAP registers here as opposed to the ISR
    INTCAPB_Flag = spi_read(GPIOB);
            
    //Set out button flags depending on our INTCAP registers
    if ((INTCAPA_Flag & S0)) {          
        ButtonS0_Flag = 1;
    }
        
    if ((INTCAPA_Flag & S1)) {
        ButtonS1_Flag = 1;
    }

    if ((INTCAPB_Flag & S2)) {
        ButtonS2_Flag = 1;
        }

    if ((INTCAPB_Flag & S3)) {
        ButtonS3_Flag = 1;
    }
}

// Define the Timer2 output compare interrupt service routine
ISR(TIMER2_COMPA_vect) {    
    timer2_ms_counter++;    //Variable for calculating periods
    HZD_ms_counter++;       //Separate variable used for Hazard phase timing
    
    if (timer2_ms_counter == time_period_value){    //If we reach the current value for period
        time_periods_elapsed++;                     //Increment our time period counters
        time_periods_elapsed_LCD++;                 //This one is never reset and is only for displaying to LCD
        time_period_value = 100+((ADCH/10)*36);     //Redefine period using an equation (100ms to 1s)
        
        //Since POT is not perfect and doesn't always zero out or reach max value
        //we have some if statements to lock those values to 1000 or 100
        //so the pot is more consistent.
        if (time_period_value > 900){
            time_period_value = 1000;
        }
        if (time_period_value < 200){
            time_period_value = 100;
        }
        
        timer2_ms_counter = 0;                      //Reset our count to 0
    }
}

/*ISR for PCINT0 (PB0)
 * Triggered by a pin change on PB0, which is attached to the button S6
 * Determines if the button is still pressed and sets the corresponding flag
 */
ISR(PCINT0_vect) {
    PCINT_Occured = 1;          //Set flag to be processed in main loop
    if (((PORTB & S6) == 1)){     //Check if button is released;
        HZD_ms_counter = 0;     //Reset counter only when the button is released
    }
}

/*ISR for External Interrupt INT0
 * Triggered by an interrupt generated by the Port Expander attached to INT0
 * Reads the INTCAP registers for both GPIOA and GPIOB to determine which
 * button generated the interrupt and sets the corresponding flag
 */
ISR(INT0_vect) {
    Expander_Interrupt_Occured = 1;
}

//Setup function combines all other setup functions into one - Sets DDR and PORT registers
void setup() {
    
    setup_spi();            //Setup SPI communication on the ATmega328P side
    setup_PortExpander();   //Sends data to the port expander to set registers
    
    setup_I2C();    //Sets up I2C communication on the ATmega328P side
   
    setup_ADC();    //Sets up ADC conversion for A0

    setup_timer2(); //Enables and starts our timer2

    //DDR - 0 for input - 1 for output
    //PORT - 0 for no pullup - 1 for pullup
    DDRB |=  0b00101110;    //Direction Register B - Attached to port expander and button
    PORTB |= 0b00000001;    //PORTB Internal Pullups - Enabled only for PB0(S6))

    DDRC |=  0b00011110;    //Direction Register C - Attached to SRP LEDs, LCD Display, and Turnpot
    PORTC |= 0b00000000;    //PORTC Internal Pullups - All disabled

    DDRD |=  0b10110000;    //Direction Register D - Attached to Port Expander, SPR LEDs, SZ LEDs, S4 and S5
    PORTD |= 0b01001000;    //PORTD Internal Pullups - Enabled for S4 and S5
    
    EICRA |= 0b00000001;    //External interrupt Control Register A - Generates an interrupt on any logical change INT0
    EIMSK |= 0b00000001;    //Enable interrupts for INT0     
    
    PCICR |= 0b00000001;    //Enables PC interrupts for PCINT0:7 and PCINT16:23
    PCMSK0 |= 0b00000001;   //Enables interrupt for PCINT0
   
    sei();                  //Enable global interrupts
    
    setup_LCD(LCD_Addr);
}


//===========Main Loop==========//
int main(void) {
    
    setup();    //Runs setup
    
    while(1){
        
        if(Expander_Interrupt_Occured){         //If statement for handling inputs from port expander
            checkButtonInputs();
            Expander_Interrupt_Occured = 0;     //Reset the flag
        }
        
        if (PCINT_Occured == 1){                //If statement for handling inputs from S6
            
            if ((!(PINB & S6)) == 1){
                ButtonS6_Flag = 1;
            } else {ButtonS6_Flag = 0;}
            
            PCINT_Occured = 0;
        }
        
        /*Inputs for S4 and S5 are handled outside interrupts as they aren't necessary
         * inputs for the pass requirement, however their status needs to be printed to the screen
         * as per the pass requirements listed in the document.
         */
        if ((!(PIND & S4)) == 1){
                ButtonS4_Flag = 1;
            } else {ButtonS4_Flag = 0;}
            
        if ((!(PIND & S5)) == 1){
            ButtonS5_Flag = 1;
        } else {ButtonS5_Flag = 0;}
        
        
        switch(curr_phase){     //State machine start
            case HZD:
                
                    if (HZD_ms_counter%2000 < 1000){    //Flashes HZD LEDs for 1 second on 1 second off
                        GPIOA_LEDs = 0b01000100;
                        GPIOB_LEDs = 0b01000100;
                        PORTC |=(0b00000100);
                    
                    } else {
                        GPIOA_LEDs = 0b00000000;
                        GPIOB_LEDs = 0b00000000;
                        PORTC &= 0b11111011;
                    }
                    
                    if ((ButtonS6_Flag == 1)&&(HZD_ms_counter > 2000)){
                        HZD_ms_counter = 0;
                    }
                
                if (HZD_ms_counter > 10000){
                    resetTimer();
                    PORTC &= 0b00000000;
                    next_phase = MSS;
                }
                
                break;
                
            case MSS:
                
                GPIOA_LEDs = (MSNG|MSSG);
                GPIOB_LEDs = (MSSR|SRMR);
                
                if(ButtonS6_Flag == 1){
                    next_phase = HZD;
                    resetTimer();
                    break;
                }
                
                ButtonS0_Flag = 0;
                ButtonS1_Flag = 0;
                checkButtonInputs();
                
                if ( (time_periods_elapsed >= 6) || ( (time_periods_elapsed >=4) && (ButtonS0_Flag == 0) && (ButtonS1_Flag == 0) ) ){
                    
                    if(ButtonS2_Flag == 1){
                        next_phase = MSS_2_MSR;
                        checkButtonInputs();
                        resetTimer();
                        break;
                    }
                    else if(ButtonS3_Flag == 1){
                        next_phase = MSS_2_SRM;
                        checkButtonInputs();
                        resetTimer();
                        break;
                    }
                    else {
                        next_phase = MSS;
                        resetTimer();
                    }
                }
                break;
                
            case MSS_2_MSR:
                
                if (time_periods_elapsed < 2){
                    GPIOA_LEDs = (MSNG | MSSY);
                    GPIOB_LEDs = (MSRR | SRMR);
                    LCD_Position(LCD_Addr, 0x43);
                    LCD_Write_Chr(LCD_Addr, theLetterY);
                }
                
                if (time_periods_elapsed >= 2){
                    GPIOA_LEDs = (MSNG|MSSR);
                    GPIOB_LEDs = (MSRR|SRMR);
                    LCD_Position(LCD_Addr, 0x43);
                    LCD_Write_Chr(LCD_Addr, theLetterR);
                }
                
                if (ButtonS6_Flag == 1){
                    next_phase = HZD;
                    resetTimer();
                    break;
                }
                
                if (time_periods_elapsed >= 4){
                    next_phase = MSR;
                    resetTimer();
                }
                
                break;
                
            case MSS_2_SRM:
                
                if (time_periods_elapsed < 2){
                    GPIOA_LEDs = (MSNY|MSSY);
                    GPIOB_LEDs = (MSRR|SRMR);
                    LCD_Position(LCD_Addr, 0x43);
                    LCD_Write_Chr(LCD_Addr, theLetterY);
                }
                
                if (time_periods_elapsed >=2){
                    GPIOA_LEDs = (MSNR|MSSR);
                    GPIOB_LEDs = (MSRR|SRMR);
                    LCD_Position(LCD_Addr, 0x43);
                    LCD_Write_Chr(LCD_Addr, theLetterR);
                }
                
                if (ButtonS6_Flag == 1){
                    next_phase = HZD;
                    resetTimer();
                    break;
                }
                
                if (time_periods_elapsed >= 4){
                    next_phase = SRM;
                    resetTimer();
                }
             
                
                break;
                
            case MSR:
                
                GPIOA_LEDs = (MSNG|MSSR);
                GPIOB_LEDs = (MSRG|SRMR);
                
                if (ButtonS6_Flag == 1){
                    next_phase = HZD;
                    resetTimer();
                    break;
                }
                
                ButtonS2_Flag = 0;
                checkButtonInputs();
                
                if ((time_periods_elapsed >= 3) || ((time_periods_elapsed >= 2) && (ButtonS2_Flag == 0))){
                    
                    if (ButtonS3_Flag == 1){
                        next_phase = MSR_2_SRM;
                        checkButtonInputs();
                        resetTimer();
                    } else {
                        next_phase = MSR_2_MSS;
                        checkButtonInputs();
                        resetTimer();
                    }
                }
                break;
                
            case MSR_2_SRM:
                
                if(time_periods_elapsed < 2){
                    GPIOA_LEDs = (MSNY|MSSR);
                    GPIOB_LEDs = (MSRY|SRMR);
                    LCD_Position(LCD_Addr, 0x43);
                    LCD_Write_Chr(LCD_Addr, theLetterY);
                }
                if (ButtonS6_Flag == 1){
                    next_phase = HZD;
                    resetTimer();
                    break;
                }
                if (time_periods_elapsed >= 2){
                    GPIOA_LEDs = (MSNR|MSSR);
                    GPIOB_LEDs = (MSSR|SRMR);
                    LCD_Position(LCD_Addr, 0x43);
                    LCD_Write_Chr(LCD_Addr, theLetterR);
                }
                
                if (time_periods_elapsed >= 4){
                    next_phase = SRM;
                    resetTimer();
                }
                        
                break;
                
            case MSR_2_MSS:
                
                if (time_periods_elapsed < 2){
                    GPIOA_LEDs = (MSNG|MSSR);
                    GPIOB_LEDs = (MSRY|SRMR);
                    LCD_Position(LCD_Addr, 0x43);
                    LCD_Write_Chr(LCD_Addr, theLetterY);
                }
                if (ButtonS6_Flag == 1){
                    next_phase = HZD;
                    resetTimer();
                    break;
                }
                if (time_periods_elapsed >= 2){
                    GPIOA_LEDs = (MSNG|MSSR);
                    GPIOB_LEDs = (MSRR|SRMR);
                    LCD_Position(LCD_Addr, 0x43);
                    LCD_Write_Chr(LCD_Addr, theLetterR);
                }
                if (time_periods_elapsed >= 4){
                    next_phase = MSS;
                    resetTimer();
                }
                
                break;
                
            case SRM:
                
                GPIOA_LEDs = (MSNR|MSSR);
                GPIOB_LEDs = (MSRR|SRMG);
                
                if (ButtonS6_Flag == 1){
                    next_phase = HZD;
                    resetTimer();
                    break;
                }
                
                ButtonS3_Flag = 0;
                checkButtonInputs();
                
                if ((time_periods_elapsed >= 4) || ((time_periods_elapsed >= 2) && (ButtonS3_Flag == 0))){
                    
                    if ((ButtonS1_Flag == 1)||(ButtonS0_Flag == 1)){
                        next_phase = SRM_2_MSS;
                        resetTimer();
                    }
                    
                    else if (ButtonS2_Flag == 1){
                        next_phase = SRM_2_MSR;
                        resetTimer();
                    } 
                    else {
                        next_phase = SRM_2_MSS;
                        resetTimer();
                    }
                }
                
                break;
                
            case SRM_2_MSS:
                
                if (time_periods_elapsed < 2){
                    GPIOA_LEDs = (MSNR|MSSR);
                    GPIOB_LEDs = (MSRR|SRMY);
                    LCD_Position(LCD_Addr, 0x43);
                    LCD_Write_Chr(LCD_Addr, theLetterY);
                }
                if (ButtonS6_Flag == 1){
                    next_phase = HZD;
                    resetTimer();
                    break;
                }
                if(time_periods_elapsed >= 2){
                    GPIOA_LEDs = (MSNR|MSSR);
                    GPIOB_LEDs = (MSRR|SRMR);
                    LCD_Position(LCD_Addr, 0x43);
                    LCD_Write_Chr(LCD_Addr, theLetterR);
                }
                if (time_periods_elapsed >= 4){
                    next_phase = MSS;
                    resetTimer();
                }
                
                break;
                
            case SRM_2_MSR:
                
                if (time_periods_elapsed < 2){
                    GPIOA_LEDs = (MSNR|MSSR);
                    GPIOB_LEDs = (MSRR|SRMY);
                    LCD_Position(LCD_Addr, 0x43);
                    LCD_Write_Chr(LCD_Addr, theLetterY);
                }
                
                if (ButtonS6_Flag == 1){
                    next_phase = HZD;
                    resetTimer();
                    break;
                }
                
                if (time_periods_elapsed >= 2){
                    GPIOA_LEDs = (MSNR|MSSR);
                    GPIOB_LEDs = (MSRR|SRMR);
                    LCD_Position(LCD_Addr, 0x43);
                    LCD_Write_Chr(LCD_Addr, theLetterR);
                }
                if (time_periods_elapsed >=4) {
                    next_phase = MSR;
                    resetTimer();
                }
                break;
        }
        updateLEDs();
        updateLCD();
        curr_phase = next_phase;
    }
}
```


### ELEC3042 Minor - Pass
```c
/*
 * File: MinorProject.c
 * Author: Tyler Johnson
 *
 * Created on 19th March 2022, 4:55 PM
 */

//==============Header files==============
#include <xc.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#define A1 0b00000010                                   //Define variable for A1 pin
#define A2 0b00000100                                   //Define variable for A2 pin

//====================================== Global Variables and Functions ======================================
char digits[4];                                         //char array of length 4 - in initial state
volatile uint32_t clock_count = 0;                      //millisecond timer, this is updated every millisecond using a CTC timer interrupt
volatile uint32_t display_time = 0;                     //Time being displayed
volatile uint32_t saved_time = 0;                       //Time saved (during pause state)

volatile uint32_t A1_time = 0;                          //Time variable for storing time since A1 is pressed first
volatile uint32_t A2_time = 0;                          //Time variable for storing time since A1 is pressed first
volatile uint8_t old_button = 0b00001110;               //Old Button State
volatile uint8_t new_button = 0b00001110;               //New Button State
volatile uint32_t debounce_timer = 0;                   //another millisecond timer running off the same timer interrupt to keep track of time for debouncing
volatile uint8_t button_flags = 0;                      //Variable for setting button flags

enum STATE {stateInitial, stateCount, statePaused};     //Define each state for the state machine
enum STATE cur_state;                                   //Define a variable to keep track of the current state
enum STATE next_state;                                  //Define a variable to keep track of the state being transitioned into

//Segment byte maps for numbers 0 to 9
const uint8_t SEGMENT_MAP[] = {
    0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0X80, 0X90,
// Continuing on for A (10) to F (15)
    0x88, 0x83, 0xC6, 0xA1, 0x86, 0x8E,
// Then blank (16), dash (17)
    0xFF, 0x40
};

//Returns the corresponding segmap value
uint8_t segmentMap(uint8_t value) {
    return SEGMENT_MAP[value];
}

//Interrupt for S1-A1 and S2-A2
ISR(PCINT1_vect) {  
    new_button = PINC;                                  //Current state of PINC
    
    uint8_t changed_bits = old_button^new_button;       //Calculate which bits have changed
    
    if (changed_bits & A1){                             //Check if button change has occurred on A1
        if ((debounce_timer - A1_time)>3){              //If 30 ms has passed
            A1_time = debounce_timer;                   //Set A1_time to equal the value of de-bounce (zero it)
            if ((old_button & ~new_button) & A1){       //If there is still a change in A1
                button_flags |= A1;                     //Set flag to high so it can be processed in loop
            }
            old_button = new_button;                    //Change the old button state to the new button state
        }
        
    }
    if (changed_bits & A2){                             //Check if button change has occurred on A1
        if ((debounce_timer - A2_time)>3){              //If 30 ms has passed
            A2_time = debounce_timer;                   //Set A2_time to equal the value of de-bounce (zero it)
            if ((old_button & ~new_button) & A2){       //If there is still a change in A2
                button_flags |= A2;                     //Set flag to high so it can be processed in loop
            }
            old_button = new_button;                    //Change the old button state to the new button state
        }
        
    }
}


//Interrupt for timer
ISR(TIMER1_COMPA_vect) {
    clock_count++;                                      //Increment clock count (every millisecond))
    debounce_timer++;                                   //Increment debounce tracking variable
}

void timer1Setup (){
    TCCR1A = 0b01000000;                                //CTC Mode
    TCCR1B = 0b00001011;                                // /64 Prescaler
    OCR1A = 2500;                                       //Number we are "counting" up to.
    TCNT1 = 0;                                          //Number we are "counting" up from.
    ICR1 = 0;                                           //Input Capture Register
    TIFR1 = 0b00000000;                                 //Timer interrupt flag register
    TIMSK1 = 0b00000010;                                //Timer interrupt mask
}

void setup() {
    timer1Setup();   //Runs timerSetup
    
    //DDR - 0 for input - 1 for output
    //PORT - 0 for no pullup - 1 for pullup
    
    DDRB =  0b00111110;          //Direction Register B - Attached to port expander and button
    PORTB = 0b00000001;         //PORTB Internal Pullups

    DDRC =  0b00111110;          //Direction Register C - Attached to SRP LEDs, LCD Display, and Turnpot
    PORTC = 0b00000000;         //PORTC Internal Pullups

    DDRD =  0b10110100;          //Direction Register D - Attached to Port Expander, and SPR LEDs
    PORTD = 0b01001000;         //PORTD Internal Pullups

    EIMSK = 0;
    EICRA = 0;
    
    PCMSK1 = 0b00001110;        //Pin Change Mask Register 0
    PCICR =  0b00000010;         //Pin Change Interrupt Control Register
    
    sei();                      //Enable global interrupts
}



//Sending data to the 7 segment display using segments and digit array as input
void sendData(uint8_t segments, uint8_t digits) {
        PORTD |= _BV(7);                            //Set PD7 High
     
        for (int i = 0; i < 8; i++){                //Loop 8 times
            PORTD &= ~_BV(7);                       //Set PD7 Low
                if(segments & (0b10000000>>i))      //Compare segments to a mask that shifts based on the value of i
                {
                    PORTB |= _BV(0);                //Set PB0 High
                }
                else
                {
                    PORTB &= ~_BV(0);               //Set PB0 Low
                }
            PORTD |= _BV(7);                        //Set PD7 High
        }
        for(int j = 0; j < 8; j++){                 //Loop 8 times
            PORTD &= ~_BV(7);                       //Set PD7 Low
                if(digits & (0b10000000>>j))
                {
                    PORTB |= _BV(0);                //Set PB0 High
                }
                else
                {
                   PORTB &= ~_BV(0);                //Set PB0 Low
                }
            PORTD = 0b10000000;
        }
         PORTD = 0b10010000;
}

//Sends data from digits to the sendData function - which in turn
//displays on the 7 segment
void showDigits() {
    sendData(segmentMap(digits[0]) & 0b01111111, (1<<0));   //Sends data and enables dp
    sendData(segmentMap(digits[1]), (1<<1));
    sendData(segmentMap(digits[2]) & 0b01111111, (1<<2));   //Sends data and enables dp
    sendData(segmentMap(digits[3]), (1<<3));

    sendData(segmentMap(16), 0);                            // blank the display
}


//===Main Loop==//
int main(void) {
    setup();
    cur_state = stateInitial;                       //Set state to Initial off the bat
    
    while(1) {                                      //Main Loop
        showDigits();                               //Displays digits (0.00.0)
        switch(cur_state){                          //Switch statement
            
            case stateInitial:                      //Initial State - timer is at 0 and count doesn't increment
                PORTB |= 0b11111111;                //Turn off all LEDs
                
                clock_count = 0;                    //Reset the time
                display_time = 0;                   //Change the saved time to the current display time (0)
                
                if(button_flags & A1){                      //If A1 is pressed
                    button_flags = button_flags & ~A1;      //Reset the flag
                    next_state = stateInitial;              //Set the next state to initial
                }
                else{
                    if(button_flags & A2){                  //If A2 is pressed
                        next_state = stateCount;            //Set the next state transition to stateCount
                        button_flags = button_flags & ~A2;  //Reset the flag
                    }
                }  
                break;
                
            case stateCount:                                //Count State - Timer is counting up from either paused or initial
                PORTB |= 0b11111111;                        //Turn off all LEDs
                
                display_time = clock_count;                 //Assign clock count to display_time - starting the timer from where it was given the previous state
                
                if(button_flags & A1){                      //If A1 is pressed
                    button_flags = button_flags & ~A1;      //Reset the flag
                    next_state = stateInitial;              //Set the next state transition to stateInitial
                }
                else{
                    if(button_flags & A2){                  //If A2 is pressed
                        button_flags = button_flags & ~A2;  //Reset the flag
                        saved_time = display_time;          //Save the value of display_time so it can be resumed later
                        next_state = statePaused;           //Set the next state transition to statePaused
                        
                    }
                    else{
                        next_state = stateCount;            //Return to stateCount
                    }
                }
                break;
                
            case statePaused:                               //Pauses count and displays the same value, when start/stop is pressed it resumes
                PORTB &= 0b11111011;                        //Turn on D4 LED
                
                if (button_flags & A2){                     //If A2 is pressed
                    button_flags = button_flags & ~A2;      //Reset the flag
                    clock_count = saved_time;               //Assign saved_time to clock_count - resuming counting from saved_time
                    next_state = stateCount;                //Set the next state transition to stateCount
                }
                else{
                    next_state = statePaused;               //Otherwise stay in statePaused
                    
                    if (button_flags & A1){                 //If A1 is pressed
                        button_flags = button_flags & ~A1;  //Reset the flag
                        next_state = stateInitial;          //Set the next state transition to stateCount
                        clock_count = 0;                    //Reset clock_count to 0
                    }
                    else{
                        if ((button_flags & A2)==1){            //If A2 = button_flags
                            button_flags = button_flags & ~A2;  //Reset the flag
                            next_state = statePaused;           //Set the next state transition to statePaused
                        }

                    }

                }
                break;
                }
        
        cur_state = next_state;                             //set cur_state to next_state
        
        digits[0] = ((display_time/10)/600)%10;                 //update display_time to change the time displayed on the 7 segment display
        digits[1] = ((display_time/100)%60)/10;
        digits[2] = ((display_time/100)%60)%10;
        digits[3] = (display_time/10)%10;
        showDigits();
    }
}

```

### Timers
#### Timer0 Setup
```scss
void setup_timer0() {
  // Set the Timer0 control registers to CTC mode with a prescaler of 64
  TCCR0A |= (1 << WGM01);
  TCCR0B |= (1 << CS01) | (1 << CS00);
  TCCR0B &= ~(1 << CS02);

  // Set the Timer0 output compare register to trigger an interrupt every 1ms
  OCR0A = 249;

  // Enable Timer0 output compare interrupt
  TIMSK0 |= (1 << OCIE0A);
}

// Define the Timer0 output compare interrupt service routine
ISR(TIMER0_COMPA_vect) {
  // Insert your code here to handle the Timer0 interrupt
}
```

#### Timer1 Setup
```scss
void setup_timer1() {
  // Set the Timer1 control registers to CTC mode with a prescaler of 64
  TCCR1B |= (1 << WGM12) | (1 << CS11) | (1 << CS10);
  TCCR1B &= ~(1 << CS12);

  // Set the Timer1 output compare register to trigger an interrupt every 1ms
  OCR1A = 249;

  // Enable Timer1 output compare interrupt
  TIMSK1 |= (1 << OCIE1A);
}

// Define the Timer1 output compare interrupt service routine
ISR(TIMER1_COMPA_vect) {
  // Insert your code here to handle the Timer1 interrupt
}
```

#### Timer2 Setup
```scss
void setup_timer2() {
  // Set the Timer2 control registers to CTC mode with a prescaler of 64
  TCCR2A |= (1 << WGM21);
  TCCR2B |= (1 << CS22) | (1 << CS21);
  TCCR2B &= ~(1 << CS20);

  // Set the Timer2 output compare register to trigger an interrupt every 1ms
  OCR2A = 249;

  // Enable Timer2 output compare interrupt
  TIMSK2 |= (1 << OCIE2A);
}

// Define the Timer2 output compare interrupt service routine
ISR(TIMER2_COMPA_vect) {
  // Insert your code here to handle the Timer2 interrupt
}
```

#### Setup timer1 in PWM
```scss
void setup_pwm_timer1(){
        // Set PB1 as output pin
    DDRB |= (1 << PB1);

    // Set timer1 to PWM mode
    TCCR1A |= (1 << COM1A1) | (1 << WGM11);

    // Set prescaler to 64 and start the timer
    TCCR1B |= (1 << CS11) | (1 << CS10);
    
    //Set duty cycle to 0% so it doesn't make any noise initially
    OCR0A = 0;
}
```






### Analog to Digital (ADC)
#### Setup
```scss
void setup_adc() {
  // Set the ADC reference voltage to AVCC with external capacitor at AREF pin
  ADMUX |= (1 << REFS0);
  ADMUX &= ~(1 << REFS1);

  // Set the ADC clock prescaler to 128 (for 125kHz sampling rate @ 16MHz system clock)
  ADCSRA |= (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0);

  // Enable ADC interrupt
  ADCSRA |= (1 << ADIE);

  // Enable ADC and start first conversion
  ADCSRA |= (1 << ADEN) | (1 << ADSC);
}

// Define the ADC conversion complete interrupt service routine
ISR(ADC_vect) {
  // Read the ADC result from the low and high registers
  uint16_t result = ADC;

  // Insert your code here to handle the ADC result
}
```

#### Read A0
```scss
uint16_t read_analog_input() {
  // Set the ADC input channel to A0
  ADMUX &= ~((1 << MUX3) | (1 << MUX2) | (1 << MUX1) | (1 << MUX0));

  // Start a single conversion
  ADCSRA |= (1 << ADSC);

  // Wait for the conversion to complete
  while (ADCSRA & (1 << ADSC));

  // Read the ADC result from the low and high registers
  uint16_t result = ADC;

  return result;
}
```

#### Alternate ADC setup Function (Free running)
```scss
void setupAtoD() {

	ADMUX = 0b01100000; //Reference AVcc, left adjust, Channel ADC0
    
    ADCSRA = 0b10000110; //Enable, no start, no auto, no interrupt, scale = 64
    
    ADCSRB = 0b00000000; //Free running mode
    
	DIDR0 = 0b00000001; //Disable digital input buffer on ADC0
    
    ADCSRA |= 0b00100000;  //Run first conversion

} 
```

### Interrupts



### Inputs and De-Bouncing
#### Simple Debounce Code
```scss
new_button = PINC;                              //Current state of PINC

    uint8_t changed_bits = old_button^new_button;   //Calculate which bits have changed

    if (changed_bits & A1) {                        //Check if button change has occurred on A1
        if ((debounce_timer - A1_time) > 3) {       //If 30 ms has passed
            A1_time = debounce_timer;               //Set A1_time to equal the value of de-bounce (zero it)
            if ((old_button & ~new_button) & A1) {  //If there is still a change in A1
                button_flags |= A1;                 //Set flag to high so it can be processed in loop
            }
            old_button = new_button;                //Change the old button state to the new button state
        }

    }
```

### PWM Generation
```scss
void Timer0_ISR (void) interrupt 1
{

TF0 = 0; //Clear TFO Flag

PWM_counter++;
if (PWM_counter >= dutyCycleCount){
	PWM_output = 0;
}
if (PWM_counter >= MAX_count){{
	PWM_output = 1;
	PWM_counter = 0;
}
```
# Python

## Physics

### Dot Product

```python
def dot_product(xlist,ylist):
    
    if len(xlist) != len(ylist):
        return None
    
    dotP = 0
    for i in range(len(xlist)):
         dotP = dotP + ( xlist[i] * ylist[i] )
    return dotP

```

### Rangef - Range with step
```python
def rangef(xmin, xmax, dx):
    out = []
    steps = int(round((xmax-xmin)/float(dx)))
    for step in range(steps):
        x = step*dx+xmin
        out.append(x)
        
    return out
```

```python
>>> a = np.zeros((2, 3, 4))
>>> a
array([[[ 0.,  0.,  0.,  0.],
        [ 0.,  0.,  0.,  0.],
        [ 0.,  0.,  0.,  0.]],

       [[ 0.,  0.,  0.,  0.],
        [ 0.,  0.,  0.,  0.],
        [ 0.,  0.,  0.,  0.]]])
```

Arrays in NumPy are printed as the word `array` followed by structure, similar to embedded Python lists. Let's create a similar list:

```python
>>> l = [[[ 0.,  0.,  0.,  0.],
          [ 0.,  0.,  0.,  0.],
          [ 0.,  0.,  0.,  0.]],

          [[ 0.,  0.,  0.,  0.],
          [ 0.,  0.,  0.,  0.],
          [ 0.,  0.,  0.,  0.]]]

>>> l
[[[0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0]], 
 [[0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0]]]
```

The first level of this compound list `l` has exactly 2 elements, just as the first dimension of the array `a` (# of rows). Each of these elements is itself a list with 3 elements, which is equal to the second dimension of `a` (# of columns). Finally, the most nested lists have 4 elements each, same as the third dimension of `a` (depth/# of colors).

So you've got exactly the same structure (in terms of dimensions) as in Matlab, just printed in another way.

Some caveats:

1. Matlab stores data column by column ("Fortran order"), while NumPy by default stores them row by row ("C order"). This doesn't affect indexing, but may affect performance. For example, in Matlab efficient loop will be over columns (e.g. `for n = 1:10 a(:, n) end`), while in NumPy it's preferable to iterate over rows (e.g. `for n in range(10): a[n, :]` -- note `n` in the first position, not the last).
    
2. If you work with colored images in OpenCV, remember that:
    
    2.1. It stores images in BGR format and not RGB, like most Python libraries do.
    
    2.2. Most functions work on image coordinates (`x, y`), which are opposite to matrix coordinates (`i, j`).


# Arduino (C mixed with C++ sprinkled with libraries)

# C Sharp

# C++

