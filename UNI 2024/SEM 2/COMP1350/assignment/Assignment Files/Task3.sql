create schema GroupAssignment; -- Create a schema
use GroupAssignment;  -- Use the schema

-- GROUP 016 DETAILS
-- Tyler Johnson - 46978518


-- ASSUMPTIONS
-- 1. IDs are made up of the first 3 to 4 letters of the table name, followed by an identification number with up to 3 digits.
-- to account for the length, all ID numbers will have var length 7. 
-- 2. End dates for promotions and supplier date ranges must be on or after the start date, we will implement CHECK constraints to ensure this
-- 3. Review scores are from 0 to 10
-- 4. As Event is an existing keyword in SQL, the table has been renamed to eEvent. This has no bearing on the schema's function
-- 5. The Visitor table in the ERD corresponds to the Customer table in the schema provided in the Task 3 briefing. As instructed by tutors, these are the same table.


-- Question-A
-- Table Creation (Incomplete and Erroneous - please fix the errors and complete this section)

-- Promotion Table
CREATE TABLE Promotion (
    PromoID VARCHAR(7) PRIMARY KEY,
    PromoName VARCHAR(50) NOT NULL,
    PromoDiscount DECIMAL(5,2) NOT NULL
);

-- Category Table
CREATE TABLE Category (
    CategoryID VARCHAR(7) PRIMARY KEY,
    CategoryName VARCHAR(50) NOT NULL,
    CategoryDesc VARCHAR(200) NOT NULL
);

-- Chocolate Table
CREATE TABLE Chocolate (
    ChocolateID VARCHAR(7) PRIMARY KEY,
    ChocolateName VARCHAR(50) NOT NULL,
    ChocolateDesc VARCHAR(200) NOT NULL,
    ChocolatePrice DECIMAL(10,2) NOT NULL,
    ChocolateWeight INT NOT NULL,
    CategoryID VARCHAR(7) NOT NULL,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- Discount Table
CREATE TABLE Discount (
    PromotionID VARCHAR(7) NOT NULL,
    ChocolateID VARCHAR(7) NOT NULL,
    StartDateTime DATETIME NOT NULL,
    EndDateTime DATETIME NOT NULL,
    PRIMARY KEY (PromotionID, ChocolateID),
    FOREIGN KEY (PromotionID) REFERENCES Promotion(PromoID),
    FOREIGN KEY (ChocolateID) REFERENCES Chocolate(ChocolateID),
    CHECK (EndDateTime > StartDateTime)
);

-- Customer Table
CREATE TABLE Customer (
    CustomerID VARCHAR(7) PRIMARY KEY,
    CustomerName VARCHAR(50) NOT NULL,
    CustomerEmail VARCHAR(70) NOT NULL,
    CustomerPhNum VARCHAR(20) NULL,
    DateOfBirth DATE NOT NULL
);

-- Review Table
CREATE TABLE Review (
    ReviewID VARCHAR(7) PRIMARY KEY,
    ReviewRating DECIMAL(3,1) NOT NULL,
    ReviewComment VARCHAR(255) NOT NULL,
    ReviewDateTime DATETIME NOT NULL,
    CustomerID VARCHAR(7) NULL,
    ChocolateID VARCHAR(7) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (ChocolateID) REFERENCES Chocolate(ChocolateID),
    CHECK (ReviewRating >= 0 AND ReviewRating <= 10)
);

-- Reservation Table
CREATE TABLE Reservation (
    ReservationID VARCHAR(7) PRIMARY KEY,
    ReservationDateTime DATETIME NOT NULL,
    EmployeeDemonstrator VARCHAR(50),
    NumberOfPeople INT NOT NULL,
    DurationOfDemonstrator TIME NOT NULL
);

-- TastingExperience Table
CREATE TABLE TastingExperience (
    ExperienceID VARCHAR(7) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Duration TIME NOT NULL,
    Cost DECIMAL(10,2) NOT NULL,
    ReservationID VARCHAR(7),
    FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID)
);

-- Department Table
CREATE TABLE Department (
    DepartmentID VARCHAR(7) PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

-- Product Table
CREATE TABLE Product (
    ProductID VARCHAR(7) PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    ProductDescription TEXT
);

-- Supplier Table
CREATE TABLE Supplier (
    SupplierID VARCHAR(7) PRIMARY KEY,
    SupplierName VARCHAR(50) NOT NULL
);

-- Subscription Table
CREATE TABLE Subscription (
    SubscriptionID VARCHAR(7) PRIMARY KEY,
    SubscriptionName VARCHAR(50) NOT NULL,
    SubscriptionCost DECIMAL(10,2) NOT NULL
);

-- Employee Table
CREATE TABLE Employee (
    EmployeeID VARCHAR(7) PRIMARY KEY,
    EmployeeType VARCHAR(50) NOT NULL,
    EmployeeName VARCHAR(50) NOT NULL,
    EmployeeAddress VARCHAR(100) NOT NULL,
    DepartmentID VARCHAR(7),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- eEvent Table (Renamed from Event)
CREATE TABLE eEvent (
    eEventID VARCHAR(7) PRIMARY KEY,
    eEventName VARCHAR(50) NOT NULL,
    eEventDateTime DATETIME NOT NULL,
    eEventCost DECIMAL(10,2) NOT NULL,
    eEventCapacity INT NOT NULL,
    Recurring BOOLEAN NOT NULL,
    EmployeeID VARCHAR(7),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    CHECK (eEventCapacity > 0)
);

-- Exhibit Table
CREATE TABLE Exhibit (
    ExhibitID VARCHAR(7) PRIMARY KEY,
    Description TEXT,
    NumberOfItem INT NOT NULL,
    eEventID VARCHAR(7),
    FOREIGN KEY (eEventID) REFERENCES eEvent(eEventID)
);

-- Ingredient Table
CREATE TABLE Ingredient (
    IngredientID VARCHAR(7) PRIMARY KEY,
    IngredientName VARCHAR(50) NOT NULL,
    SupplierID VARCHAR(7),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);

-- SourceHistory Table
CREATE TABLE SourceHistory (
    SourceID VARCHAR(7) PRIMARY KEY,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    Cost DECIMAL(10,2) NOT NULL,
    Quantity DECIMAL(10,2) NOT NULL,
    UnitOfMeasurement VARCHAR(50) NOT NULL,
    IngredientID VARCHAR(7),
    FOREIGN KEY (IngredientID) REFERENCES Ingredient(IngredientID),
    CHECK (EndDate >= StartDate)
);

-- Booking Table
CREATE TABLE Booking (
    BookingID VARCHAR(7) PRIMARY KEY,
    BookingDateTime DATETIME NOT NULL,
    NumberOfPeople INT NOT NULL,
    EmployeeID VARCHAR(7),
    eEventID VARCHAR(7),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (eEventID) REFERENCES eEvent(eEventID)
);

-- Contains Table
CREATE TABLE Contains (
    ProductID VARCHAR(7),
    IngredientID VARCHAR(7),
    PRIMARY KEY (ProductID, IngredientID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredient(IngredientID)
);

-- HelpOut Table
CREATE TABLE HelpOut (
    CustomerID VARCHAR(7),
    EmployeeID VARCHAR(7),
    PRIMARY KEY (CustomerID, EmployeeID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

-- WorksOn Table
CREATE TABLE WorksOn (
    ExperienceID VARCHAR(7),
    EmployeeID VARCHAR(7),
    PRIMARY KEY (ExperienceID, EmployeeID),
    FOREIGN KEY (ExperienceID) REFERENCES TastingExperience(ExperienceID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

-- Manage Table
CREATE TABLE Manage (
    ReservationID VARCHAR(7),
    EmployeeID VARCHAR(7),
    PRIMARY KEY (ReservationID, EmployeeID),
    FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

-- Demonstrate Table
CREATE TABLE Demonstrate (
    EmployeeID VARCHAR(7),
    eEventID VARCHAR(7),
    PRIMARY KEY (EmployeeID, eEventID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (eEventID) REFERENCES eEvent(eEventID)
);

-- EmployeeQualification Table
CREATE TABLE EmployeeQualification (
    EmployeeID VARCHAR(7),
    EmployeeQualification VARCHAR(50),
    PRIMARY KEY (EmployeeID, EmployeeQualification),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

-- IngredientMeasurement Table
CREATE TABLE IngredientMeasurement (
    IngredientID VARCHAR(7),
    ProductID VARCHAR(7),
    Measurement DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (IngredientID, ProductID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredient(IngredientID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);


-- Once successfully implemented, these insert statements should work.

INSERT INTO Promotion VALUES
	('P01', "Opening Sale", 50.0),
    ('P02', "Valentines Day", 20.0),
    ('P03', "Customer Birthday", 50.0),
    ('P04', "Opening Sale", 50.0),
    ('P05', "Opening Sale", 50.0);

INSERT INTO Category VALUES
	('CAT01', "Ecuador Single Origin", "Cocoa beans from a single Ecuadorian source");

INSERT INTO Chocolate VALUES
	('CHOC13', "Dark Chocolate Tablet", "Small, bite sized dark chocolate tablets", 17.99, 80, 'CAT01');

INSERT INTO Discount VALUES
	('P01', 'CHOC13', '2023-02-01 08:00:00', '2023-02-02 18:00:00');

INSERT INTO Customer VALUES
	('CUS145', "Jon Snow", "j.snow@notreal.com",  "90861923", '1986-12-26');

INSERT INTO Review VALUES
	('REV131', 8, "A delicious milk chocolate", '2023-02-02 13:22:54', 'CUS145','CHOC13');

-- Please ensure you INSERT atleast 5 records for every table and add it below







-- Question-B
/* Explain in simple words what each query does and make sure you comment it
 */

-- An example of an answer to a Query

/* This query prints the names of all chocolates */

Select ChocolateName
from Chocolate;

-- Query 1: A query involving a single table with one condition. Insert your answer below



-- Query 2: A query involving a single table with two conditions, with one of the conditions that uses a wild card operator. Insert your answer below



-- Query 3: A query involving a join between at least two tables with an order by clause. Insert your answer below



-- Query 4: A query involving a single table with an aggregate and group by function. Insert your answer below

