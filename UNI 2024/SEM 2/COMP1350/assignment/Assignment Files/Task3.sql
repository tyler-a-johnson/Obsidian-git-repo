create schema GroupAssignment; -- Create a schema
use GroupAssignment;  -- Use the schema

-- GROUP 016 DETAILS
-- Tyler Johnson - 46978518


-- ASSUMPTIONS
-- 1. IDs are made up of the first 3 to 4 letters of the table name, followed by an identification number with up to 3 digits.
-- to account for the length, all ID numbers will be varchar length 7. 
-- 2. End dates for promotions and supplier date ranges must be on or after the start date, CHECK constraints will ensure data validity.
-- 3. Review scores are from 0 to 10. CHECK constraints will ensure data validity.
-- 4. The Visitor table in the ERD corresponds to the Customer table in the schema provided in the Task 3 briefing. 
-- As instructed by tutors, these are the same table and will be used to combine the two schemas.


-- Question-A
-- Table Creation (Incomplete and Erroneous - please fix the errors and complete this section)

-- Department Table (Independent)
CREATE TABLE Department (
    DepartmentID VARCHAR(7) PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

-- Promotion Table (Independent)
CREATE TABLE Promotion (
    PromoID VARCHAR(7) PRIMARY KEY,
    PromoName VARCHAR(50) NOT NULL,
    PromoDiscount DECIMAL(5,2) NOT NULL
);

-- Category Table (Independent)
CREATE TABLE Category (
    CategoryID VARCHAR(7) PRIMARY KEY,
    CategoryName VARCHAR(50) NOT NULL,
    CategoryDesc VARCHAR(200) NOT NULL
);

-- Product Table (Independent)
CREATE TABLE Product (
    ProductID VARCHAR(7) PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    ProductDescription TEXT
);

-- Subscription Table (Independent)
CREATE TABLE Subscription (
    SubscriptionID VARCHAR(7) PRIMARY KEY,
    SubscriptionName VARCHAR(50) NOT NULL,
    SubscriptionCost DECIMAL(10,2) NOT NULL
);

-- Package Table (Independent)
CREATE TABLE Package (
    PackageID VARCHAR(7) PRIMARY KEY,
    PackageName VARCHAR(50) NOT NULL
);

-- Supplier Table (Independent)
CREATE TABLE Supplier (
    SupplierID VARCHAR(7) PRIMARY KEY,
    SupplierName VARCHAR(50) NOT NULL
);

-- Ingredient Table (Dependent on Supplier)
CREATE TABLE Ingredient (
    IngredientID VARCHAR(7) PRIMARY KEY,
    IngredientName VARCHAR(50) NOT NULL,
    SupplierID VARCHAR(7),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);

-- Employee Table (Dependent on Department)
CREATE TABLE Employee (
    EmployeeID VARCHAR(7) PRIMARY KEY,
    EmployeeType VARCHAR(50) NOT NULL,
    EmployeeName VARCHAR(50) NOT NULL,
    EmployeeAddress VARCHAR(100) NOT NULL,
    DepartmentID VARCHAR(7),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Chocolate Table (Dependent on Category)
CREATE TABLE Chocolate (
    ChocolateID VARCHAR(7) PRIMARY KEY,
    ChocolateName VARCHAR(50) NOT NULL,
    ChocolateDesc VARCHAR(200) NOT NULL,
    ChocolatePrice DECIMAL(10,2) NOT NULL,
    ChocolateWeight INT NOT NULL,
    CategoryID VARCHAR(7) NOT NULL,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- Discount Table (Dependent on Promotion and Chocolate)
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

-- Customer Table (Independent)
CREATE TABLE Customer (
    CustomerID VARCHAR(7) PRIMARY KEY,
    CustomerName VARCHAR(50) NOT NULL,
    CustomerEmail VARCHAR(70) NOT NULL,
    CustomerPhNum VARCHAR(20) NULL,
    DateOfBirth DATE NOT NULL
);

-- SubscriptionPackage Table (Dependent on Subscription and Package)
CREATE TABLE SubscriptionPackage (
    SubscriptionID VARCHAR(7),
    PackageID VARCHAR(7),
    PRIMARY KEY (SubscriptionID, PackageID),
    FOREIGN KEY (SubscriptionID) REFERENCES Subscription(SubscriptionID),
    FOREIGN KEY (PackageID) REFERENCES Package(PackageID)
);

-- PackageProduct Table (Dependent on Package and Product)
CREATE TABLE PackageProduct (
    PackageID VARCHAR(7),
    ProductID VARCHAR(7),
    PRIMARY KEY (PackageID, ProductID),
    FOREIGN KEY (PackageID) REFERENCES Package(PackageID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- CustomerSubscription Table (Dependent on Customer and Subscription)
CREATE TABLE CustomerSubscription (
    CustomerID VARCHAR(7),
    SubscriptionID VARCHAR(7),
    PRIMARY KEY (CustomerID, SubscriptionID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (SubscriptionID) REFERENCES Subscription(SubscriptionID)
);

-- Review Table (Dependent on Customer and Chocolate)
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

-- Reservation Table (Dependent on Employee)
CREATE TABLE Reservation (
    ReservationID VARCHAR(7) PRIMARY KEY,
    ReservationDateTime DATETIME NOT NULL,
    EmployeeDemonstrator VARCHAR(7),  -- Foreign key to EmployeeID
    NumberOfPeople INT NOT NULL,
    DurationOfDemonstrator TIME NOT NULL,
    FOREIGN KEY (EmployeeDemonstrator) REFERENCES Employee(EmployeeID)
);

-- TastingExperience Table (Dependent on Reservation)
CREATE TABLE TastingExperience (
    ExperienceID VARCHAR(7) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Duration TIME NOT NULL,
    Cost DECIMAL(10,2) NOT NULL,
    ReservationID VARCHAR(7),
    FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID)
);

-- eEvent Table (Dependent on Employee)
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

-- Exhibit Table (Dependent on eEvent)
CREATE TABLE Exhibit (
    ExhibitID VARCHAR(7) PRIMARY KEY,
    Description TEXT,
    NumberOfItem INT NOT NULL,
    eEventID VARCHAR(7),
    FOREIGN KEY (eEventID) REFERENCES eEvent(eEventID)
);

-- SourceHistory Table (Dependent on Ingredient)
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

-- Booking Table (Dependent on eEvent and Employee)
CREATE TABLE Booking (
    BookingID VARCHAR(7) PRIMARY KEY,
    BookingDateTime DATETIME NOT NULL,
    NumberOfPeople INT NOT NULL,
    EmployeeID VARCHAR(7),
    eEventID VARCHAR(7),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (eEventID) REFERENCES eEvent(eEventID)
);

-- cContains Table (Dependent on Product and Ingredient)
CREATE TABLE cContains (
    ProductID VARCHAR(7),
    IngredientID VARCHAR(7),
    PRIMARY KEY (ProductID, IngredientID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredient(IngredientID)
);

-- HelpOut Table (Dependent on Customer and Employee)
CREATE TABLE HelpOut (
    CustomerID VARCHAR(7),
    EmployeeID VARCHAR(7),
    PRIMARY KEY (CustomerID, EmployeeID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

-- WorksOn Table (Dependent on Experience and Employee)
CREATE TABLE WorksOn (
    ExperienceID VARCHAR(7),
    EmployeeID VARCHAR(7),
    PRIMARY KEY (ExperienceID, EmployeeID),
    FOREIGN KEY (ExperienceID) REFERENCES TastingExperience(ExperienceID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

-- Manage Table (Dependent on Reservation and Employee)
CREATE TABLE Manage (
    ReservationID VARCHAR(7),
    EmployeeID VARCHAR(7),
    PRIMARY KEY (ReservationID, EmployeeID),
    FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

-- Demonstrate Table (Dependent on Employee and eEvent)
CREATE TABLE Demonstrate (
    EmployeeID VARCHAR(7),
    eEventID VARCHAR(7),
    PRIMARY KEY (EmployeeID, eEventID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (eEventID) REFERENCES eEvent(eEventID)
);

-- EmployeeQualification Table (Dependent on Employee)
CREATE TABLE EmployeeQualification (
    EmployeeID VARCHAR(7),
    EmployeeQualification VARCHAR(50),
    PRIMARY KEY (EmployeeID, EmployeeQualification),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

-- IngredientMeasurement Table (Dependent on Ingredient and Product)
CREATE TABLE IngredientMeasurement (
    IngredientID VARCHAR(7),
    ProductID VARCHAR(7),
    Measurement DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (IngredientID, ProductID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredient(IngredientID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);



-- Once successfully implemented, these insert statements should work.
-- Please ensure you INSERT atleast 5 records for every table and add it below
INSERT INTO Promotion VALUES
	('PRO0001', "Opening Sale", 50.0),
    ('PRO0002', "Valentines Day", 10.0),
    ('PRO0003', "Customer Birthday", 10.0),
    ('PRO0004', "Christmas Sale", 20.0),
    ('PRO0005', "World Chocolate Day", 30.0)
;

INSERT INTO Category VALUES
	('CAT01', "Ecuador Single Origin", "Cocoa beans from a single Ecuadorian source"),
    ('CAT02', "Côte d'Ivoire Single Origin", "Cocoa beans from a single source in Côte d'Ivoire"),
    ('CAT03', "Madagascar Single Origin", "Cocoa beans from a single source in Madagascar"),
    ('CAT04', "Ghana Single Origin", "Cocoa beans from a single source in Ghana"),
    ('CAT05', "Costa Rica Single Origin", "Cocoa beans from a single source in Costa Rica")
;

INSERT INTO Chocolate VALUES
	('CHOC01', "Dark Chocolate Tablet", "Small, bite sized dark chocolate tablets", 17.99, 80, 'CAT01'),
    ('CHOC01', "Milk Chocolate Squares", "Bite sized milk chocolate squares", 19.99, 80, 'CAT02'),
    ('CHOC02', "Filled Milk Chocolate Bites", "Milk chocolates with chocolate ganache", 24.99, 80, 'CAT03'),
    ('CHOC03', "Dark Chocolate Bar", "Bar of rich dark chocolate", 17.99, 80, 'CAT05'),
    ('CHOC04', "Dark Chocolate Roses", "8 rose shaped chocolates with a selection of fillings", 24.99, 80, 'CAT04')
;

INSERT INTO Discount VALUES
	('PRO0001', 'CHOC13', '2023-02-01 08:00:00', '2023-02-02 18:00:00'),
    ('PRO0002', 'CHO02', '2023-12-01 00:00:00', '2023-12-31 23:59:59'),
	('PRO0003', 'CHO0003', '2023-11-20 00:00:00', '2023-11-27 23:59:59'),
	('PRO0004', 'CHO0004', '2023-11-25 00:00:00', '2023-11-26 23:59:59'),
	('PRO0005', 'CHO0005', '2023-12-28 00:00:00', '2024-01-05 23:59:59');
;

INSERT INTO Customer VALUES
	('CUS145', "Jon Snow", "j.snow@notreal.com",  "90861923", '1986-12-26')
;

INSERT INTO Review VALUES
	('REV131', 8, "A delicious milk chocolate", '2023-02-02 13:22:54', 'CUS145','CHOC13')
;

-- Inserting into Department table
INSERT INTO Department (DepartmentID, DepartmentName) VALUES
('DEP0001', 'Sales'),
('DEP0002', 'Marketing'),
('DEP0003', 'Production'),
('DEP0004', 'Human Resources'),
('DEP0005', 'Customer Service');

-- Inserting into Product table
INSERT INTO Product (ProductID, ProductName, ProductDescription) VALUES
('PRD0001', 'Classic Dark Chocolate Bar', 'A classic dark chocolate bar made from premium cocoa beans.'),
('PRD0002', 'Milk Chocolate Almonds', 'Milk chocolate coated almonds.'),
('PRD0003', 'White Chocolate Raspberry', 'White chocolate infused with raspberry flavors.'),
('PRD0004', 'Assorted Chocolate Box', 'An assortment of various chocolates.'),
('PRD0005', 'Truffle Selection', 'A selection of our finest truffles.');

-- Inserting into Subscription table
INSERT INTO Subscription (SubscriptionID, SubscriptionName, SubscriptionCost) VALUES
('SUB0001', 'Monthly Chocolate Club', 29.99),
('SUB0002', 'Quarterly Chocolate Club', 79.99),
('SUB0003', 'Annual Chocolate Club', 299.99),
('SUB0004', 'Gift Subscription', 49.99),
('SUB0005', 'Family Chocolate Plan', 199.99);

-- Inserting into Package table
INSERT INTO Package (PackageID, PackageName) VALUES
('PAC0001', 'Sweet Tooth Package'),
('PAC0002', 'Dark Chocolate Lovers'),
('PAC0003', 'Milk Chocolate Delight'),
('PAC0004', 'Truffle Treasure'),
('PAC0005', 'Assorted Chocolate Pack');

-- Inserting into Supplier table
INSERT INTO Supplier (SupplierID, SupplierName) VALUES
('SUP0001', 'Cocoa Imports Inc.'),
('SUP0002', 'Milk Producers Co.'),
('SUP0003', 'Sweet Sugar Suppliers'),
('SUP0004', 'Nutty Nuts Ltd.'),
('SUP0005', 'Flavor Essence LLC');

-- Inserting into Customer table
INSERT INTO Customer (CustomerID, CustomerName, CustomerEmail, CustomerPhNum, DateOfBirth) VALUES
('CUS0001', 'Alice Brown', 'alice.brown@example.com', '555-1111', '1980-05-15'),
('CUS0002', 'Bob Smith', 'bob.smith@example.com', '555-2222', '1975-08-22'),
('CUS0003', 'Carol Davis', 'carol.davis@example.com', NULL, '1990-12-05'),
('CUS0004', 'David Wilson', 'david.wilson@example.com', '555-3333', '1985-03-18'),
('CUS0005', 'Eva Johnson', 'eva.johnson@example.com', '555-4444', '1992-07-09');

-- Inserting into Employee table (Dependent on Department)
INSERT INTO Employee (EmployeeID, EmployeeType, EmployeeName, EmployeeAddress, DepartmentID) VALUES
('EMP0001', 'Sales Manager', 'Frank Miller', '101 First St.', 'DEP0001'),
('EMP0002', 'Marketing Specialist', 'Grace Lee', '202 Second Ave.', 'DEP0002'),
('EMP0003', 'Chocolatier', 'Henry Kim', '303 Third Blvd.', 'DEP0003'),
('EMP0004', 'HR Coordinator', 'Ivy Chen', '404 Fourth Rd.', 'DEP0004'),
('EMP0005', 'Customer Service Rep', 'Jack White', '505 Fifth Dr.', 'DEP0005');

-- Inserting into Ingredient table (Dependent on Supplier)
INSERT INTO Ingredient (IngredientID, IngredientName, SupplierID) VALUES
('ING0001', 'Cocoa Beans', 'SUP0001'),
('ING0002', 'Milk Powder', 'SUP0002'),
('ING0003', 'Sugar', 'SUP0003'),
('ING0004', 'Hazelnuts', 'SUP0004'),
('ING0005', 'Vanilla Extract', 'SUP0005');

-- Inserting into SubscriptionPackage table (Dependent on Subscription and Package)
INSERT INTO SubscriptionPackage (SubscriptionID, PackageID) VALUES
('SUB0001', 'PAC0001'),
('SUB0002', 'PAC0002'),
('SUB0003', 'PAC0003'),
('SUB0004', 'PAC0004'),
('SUB0005', 'PAC0005');

-- Inserting into PackageProduct table (Dependent on Package and Product)
INSERT INTO PackageProduct (PackageID, ProductID) VALUES
('PAC0001', 'PRD0001'),
('PAC0001', 'PRD0002'),
('PAC0002', 'PRD0001'),
('PAC0002', 'PRD0003'),
('PAC0003', 'PRD0002');

-- Inserting into CustomerSubscription table (Dependent on Customer and Subscription)
INSERT INTO CustomerSubscription (CustomerID, SubscriptionID) VALUES
('CUS0001', 'SUB0001'),
('CUS0002', 'SUB0002'),
('CUS0003', 'SUB0003'),
('CUS0004', 'SUB0004'),
('CUS0005', 'SUB0005');

-- Inserting into Reservation table (Dependent on Employee)
INSERT INTO Reservation (ReservationID, ReservationDateTime, EmployeeDemonstrator, NumberOfPeople, DurationOfDemonstrator) VALUES
('RES0001', '2023-11-10 14:00:00', 'EMP0001', 2, '01:00:00'),
('RES0002', '2023-11-11 15:30:00', 'EMP0002', 3, '01:30:00'),
('RES0003', '2023-11-12 16:00:00', 'EMP0003', 4, '02:00:00'),
('RES0004', '2023-11-13 17:00:00', 'EMP0004', 5, '01:00:00'),
('RES0005', '2023-11-14 18:00:00', 'EMP0005', 6, '01:15:00');

-- Inserting into TastingExperience table (Dependent on Reservation)
INSERT INTO TastingExperience (ExperienceID, Name, Duration, Cost, ReservationID) VALUES
('TAE0001', 'Dark Chocolate Tasting', '01:00:00', 50.00, 'RES0001'),
('TAE0002', 'Milk Chocolate Workshop', '01:30:00', 60.00, 'RES0002'),
('TAE0003', 'Truffle Making Class', '02:00:00', 80.00, 'RES0003'),
('TAE0004', 'Chocolate Pairing Experience', '01:15:00', 70.00, 'RES0004'),
('TAE0005', 'Chocolate History Tour', '00:45:00', 40.00, 'RES0005');

-- Inserting into eEvent table (Dependent on Employee)
INSERT INTO eEvent (eEventID, eEventName, eEventDateTime, eEventCost, eEventCapacity, Recurring, EmployeeID) VALUES
('EVE0001', 'Chocolate Festival', '2023-12-01 10:00:00', 100.00, 100, TRUE, 'EMP0001'),
('EVE0002', 'Holiday Chocolate Fair', '2023-12-15 11:00:00', 80.00, 80, FALSE, 'EMP0002'),
('EVE0003', 'Truffle Workshop', '2024-01-10 12:00:00', 50.00, 20, TRUE, 'EMP0003'),
('EVE0004', 'Chocolate Art Exhibition', '2023-11-20 13:00:00', 60.00, 50, FALSE, 'EMP0004'),
('EVE0005', 'Cocoa Bean Tasting', '2023-11-30 14:00:00', 40.00, 30, TRUE, 'EMP0005');

-- Inserting into Exhibit table (Dependent on eEvent)
INSERT INTO Exhibit (ExhibitID, Description, NumberOfItem, eEventID) VALUES
('EXH0001', 'Vintage Chocolate Wrappers', 50, 'EVE0001'),
('EXH0002', 'Chocolate Sculptures', 20, 'EVE0002'),
('EXH0003', 'Rare Cocoa Beans', 30, 'EVE0003'),
('EXH0004', 'Historical Chocolate Tools', 40, 'EVE0004'),
('EXH0005', 'Cocoa Plantation Model', 10, 'EVE0005');

-- Inserting into SourceHistory table (Dependent on Ingredient)
INSERT INTO SourceHistory (SourceID, StartDate, EndDate, Cost, Quantity, UnitOfMeasurement, IngredientID) VALUES
('SOH0001', '2023-10-01', '2023-10-31', 1000.00, 500.00, 'kg', 'ING0001'),
('SOH0002', '2023-09-01', '2023-09-30', 800.00, 300.00, 'kg', 'ING0002'),
('SOH0003', '2023-08-01', '2023-08-31', 600.00, 200.00, 'kg', 'ING0003'),
('SOH0004', '2023-07-01', '2023-07-31', 900.00, 400.00, 'kg', 'ING0004'),
('SOH0005', '2023-06-01', '2023-06-30', 700.00, 250.00, 'liters', 'ING0005');

-- Inserting into Booking table (Dependent on eEvent and Employee)
INSERT INTO Booking (BookingID, BookingDateTime, NumberOfPeople, EmployeeID, eEventID) VALUES
('BOO0001', '2023-11-01 09:00:00', 5, 'EMP0001', 'EVE0001'),
('BOO0002', '2023-11-05 10:30:00', 3, 'EMP0002', 'EVE0002'),
('BOO0003', '2023-11-10 12:00:00', 4, 'EMP0003', 'EVE0003'),
('BOO0004', '2023-11-15 13:30:00', 2, 'EMP0004', 'EVE0004'),
('BOO0005', '2023-11-20 15:00:00', 6, 'EMP0005', 'EVE0005');

-- Inserting into cContains table (Dependent on Product and Ingredient)
INSERT INTO cContains (ProductID, IngredientID) VALUES
('PRD0001', 'ING0001'),
('PRD0002', 'ING0002'),
('PRD0003', 'ING0003'),
('PRD0004', 'ING0004'),
('PRD0005', 'ING0005');

-- Inserting into HelpOut table (Dependent on Customer and Employee)
INSERT INTO HelpOut (CustomerID, EmployeeID) VALUES
('CUS0001', 'EMP0001'),
('CUS0002', 'EMP0002'),
('CUS0003', 'EMP0003'),
('CUS0004', 'EMP0004'),
('CUS0005', 'EMP0005');

-- Inserting into WorksOn table (Dependent on TastingExperience and Employee)
INSERT INTO WorksOn (ExperienceID, EmployeeID) VALUES
('TAE0001', 'EMP0001'),
('TAE0002', 'EMP0002'),
('TAE0003', 'EMP0003'),
('TAE0004', 'EMP0004'),
('TAE0005', 'EMP0005');

-- Inserting into Manage table (Dependent on Reservation and Employee)
INSERT INTO Manage (ReservationID, EmployeeID) VALUES
('RES0001', 'EMP0001'),
('RES0002', 'EMP0002'),
('RES0003', 'EMP0003'),
('RES0004', 'EMP0004'),
('RES0005', 'EMP0005');

-- Inserting into Demonstrate table (Dependent on Employee and eEvent)
INSERT INTO Demonstrate (EmployeeID, eEventID) VALUES
('EMP0001', 'EVE0001'),
('EMP0002', 'EVE0002'),
('EMP0003', 'EVE0003'),
('EMP0004', 'EVE0004'),
('EMP0005', 'EVE0005');

-- Inserting into EmployeeQualification table (Dependent on Employee)
INSERT INTO EmployeeQualification (EmployeeID, EmployeeQualification) VALUES
('EMP0001', 'Certified Chocolatier'),
('EMP0002', 'Marketing Expert'),
('EMP0003', 'Master Chocolatier'),
('EMP0004', 'HR Specialist'),
('EMP0005', 'Customer Service Pro');

-- Inserting into IngredientMeasurement table (Dependent on Ingredient and Product)
INSERT INTO IngredientMeasurement (IngredientID, ProductID, Measurement) VALUES
('ING0001', 'PRD0001', 50.00),
('ING0002', 'PRD0002', 30.00),
('ING0003', 'PRD0003', 20.00),
('ING0004', 'PRD0004', 15.00),
('ING0005', 'PRD0005', 10.00);

-- Inserting into Discount table (Dependent on Promotion and Chocolate)
INSERT INTO Discount (PromotionID, ChocolateID, StartDateTime, EndDateTime) VALUES
('PRO0001', 'CHO0001', '2023-11-01 00:00:00', '2023-11-15 23:59:59'),
('PRO0002', 'CHO0002', '2023-12-01 00:00:00', '2023-12-31 23:59:59'),
('PRO0003', 'CHO0003', '2023-11-20 00:00:00', '2023-11-27 23:59:59'),
('PRO0004', 'CHO0004', '2023-11-25 00:00:00', '2023-11-26 23:59:59'),
('PRO0005', 'CHO0005', '2023-12-28 00:00:00', '2024-01-05 23:59:59');

-- Inserting into Review table (Dependent on Customer and Chocolate)
INSERT INTO Review (ReviewID, ReviewRating, ReviewComment, ReviewDateTime, CustomerID, ChocolateID) VALUES
('REV0001', 9.0, 'Delicious dark chocolate!', '2023-11-01 10:00:00', 'CUS0001', 'CHO0001'),
('REV0002', 8.5, 'Loved the milk chocolate.', '2023-11-02 11:15:00', 'CUS0002', 'CHO0002'),
('REV0003', 7.0, 'White chocolate was a bit sweet.', '2023-11-03 12:30:00', 'CUS0003', 'CHO0003'),
('REV0004', 9.5, 'Truffles were amazing!', '2023-11-04 13:45:00', 'CUS0004', 'CHO0004'),
('REV0005', 8.0, 'Great assortment of chocolates.', '2023-11-05 15:00:00', 'CUS0005', 'CHO0005');




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

