% READWRITE Example file executing read and write functions for 1 or more 
% Dynamixel motors under Protocol 1.0 communication
%
% Depending on the example code, the motor(s) need to be pre-set to joint 
% or wheel mode via the Dynamixel Wizard or equivalent software
%
%   Part of the Dynamixel library for Matlab and Simulink
%   Author: Georgios Andrikopoulos (geoand@kth.se), 2022
%   Mechatronics & Embedded Control Systems Unit, KTH, Stockholm

clear
close all
clc

Ts = 0.01;
% Control table address
ADDR_AX_TORQUE_ENABLE       = 24;           % Control table address is different in Dynamixel model
ADDR_AX_TORQUE_CONTROL      = 34;
ADDR_AX_GOAL_POSITION       = 30;
ADDR_AX_PRESENT_POSITION    = 36;

% Change the USB port and baudrate to communicate with robot 
% Use Dynamixel Wizard 2.0 to scan for the baudrate and the port
% Disconnect the Dynamixel Wizard before running this script
com_port = convertStringsToChars(serialportlist("available"));
baud_rate = 115200;
% Set protocol Version
protocol_version = 1;

% Initialize library and port number
[lib_name, port_num] = initDxl(com_port);

% Open port
openPortDxl(lib_name, port_num);

% Set Baudrate
setBaudDxl(lib_name, port_num, baud_rate);

% Find dynamixels
[motor_IDs, motor_models] = findDxl(lib_name, port_num, protocol_version);

% Enable torque
torqueDxl(lib_name, port_num, protocol_version, motor_IDs, ...
    motor_models, 'Enable');

% Check error
checkErrorDxl(lib_name, port_num, protocol_version)

%% Joint Mode Example
% AX Motor: Make sure that the motor is set to joint mode before using
% this example
clc 

% Data to write
data = 500; % Example goal position for one motor
% data = [1000 500]; % Example goal position for two motors

% Write function
tic
writeDxl(lib_name, port_num, protocol_version, motor_IDs, motor_models, ...
    data, 'Goal Position')
toc

% Read functions
tic
readDxl(lib_name, port_num, protocol_version, motor_IDs, motor_models, ...
    'Present Position')
readDxl(lib_name, port_num, protocol_version, motor_IDs, motor_models, ...
    'Present Speed')
readDxl(lib_name, port_num, protocol_version, motor_IDs, motor_models, ...
    'Present Load')
readDxl(lib_name, port_num, protocol_version, motor_IDs, motor_models, ...
    'Present Temperature')
toc

%% Wheel Mode Examples
% AX Motor: Make sure that the motor is set to wheel mode before using
% this example
clc 

% Data to write
data = 300; % Example moving speed for one motor
% data = [500 1000]; % Example moving speeds for two motors

% Write function
tic
writeDxl(lib_name, port_num, protocol_version, motor_IDs, motor_models, ...
    data, 'Moving Speed')
toc

% Read functions
tic
readDxl(lib_name, port_num, protocol_version, motor_IDs, motor_models, ...
    'Present Position')
readDxl(lib_name, port_num, protocol_version, motor_IDs, motor_models, ...
    'Present Speed')
readDxl(lib_name, port_num, protocol_version, motor_IDs, motor_models, ...
    'Present Load')
readDxl(lib_name, port_num, protocol_version, motor_IDs, motor_models, ...
    'Present Temperature')
toc

%% End Session
clc 

% Disable torque
torqueDxl(lib_name, port_num, protocol_version, motor_IDs, motor_models, ...
    'Disable');

% Check error
checkErrorDxl(lib_name, port_num, protocol_version)

% Close port 
closePortDxl(lib_name,port_num);