create schema GroupAssignment; -- Create a schema
use GroupAssignment;  -- Use the schema

-- GROUP 016 DETAILS
-- Tyler Johnson - 46978518
-- James Cai
-- MD Tanjil Alam Emon
-- Maskatul Hasan Alif
-- Fadila Tahsina


-- ASSUMPTIONS
-- 1. IDs are made up of the first 3 to 4 letters of the table name, followed by an identification number with up to 3 digits.
-- to account for the length, all ID numbers will be varchar length 7. 
-- 2. End dates for promotions and supplier date ranges must be on or after the start date, CHECK constraints will ensure data validity.
-- 3. Review scores are from 0 to 10. CHECK constraints will ensure data validity.
-- 4. The Visitor table in the ERD corresponds to the Customer table in the schema provided in the Task 3 briefing. 
-- As instructed by tutors, these are the same table and will be used to combine the two schemas.
-- 5. All ID values are 7 characters long and comprised of the first 3 or 4 letters of the name of the table. Followed by the record index.


-- Question-A
-- Table Creation (Incomplete and Erroneous - please fix the errors and complete this section)


-- ##############################################
-- # Table Creation (Independent Tables First)
-- ##############################################

-- #####################
-- # 3. Promotion Table
-- #####################

CREATE TABLE Promotion (
    PromoID VARCHAR(7) PRIMARY KEY,
    PromoName VARCHAR(50) NOT NULL,
    PromoDiscount DECIMAL(5,2) NOT NULL
);

-- ####################
-- # 4. Category Table
-- ####################

CREATE TABLE Category (
    CategoryID VARCHAR(7) PRIMARY KEY,
    CategoryName VARCHAR(50) NOT NULL,
    CategoryDesc VARCHAR(200) NOT NULL
);

-- ##########################
-- # 6. Subscription Table
-- ##########################

CREATE TABLE Subscription (
    SubscriptionID VARCHAR(7) PRIMARY KEY,
    SubscriptionName VARCHAR(50) NOT NULL,
    SubscriptionCost DECIMAL(10,2) NOT NULL
);

-- ######################
-- # 7. Package Table
-- ######################

CREATE TABLE Package (
    PackageID VARCHAR(7) PRIMARY KEY,
    PackageName VARCHAR(50) NOT NULL
);

-- #######################
-- # 8. Supplier Table
-- #######################

CREATE TABLE Supplier (
    SupplierID VARCHAR(7) PRIMARY KEY,
    SupplierName VARCHAR(50) NOT NULL
);

-- #######################
-- # 9. Customer Table
-- #######################

CREATE TABLE Customer (
    CustomerID VARCHAR(7) PRIMARY KEY,
    CustomerName VARCHAR(50) NOT NULL,
    CustomerEmail VARCHAR(70) NOT NULL,
    CustomerPhNum VARCHAR(20) NULL,
    DateOfBirth DATE NOT NULL
);

-- #########################
-- # 24. Exhibit Table
-- #########################

CREATE TABLE Exhibit (
    ExhibitID VARCHAR(7) PRIMARY KEY,
    Description TEXT,
    NumberOfItem INT NOT NULL
);

-- ###################
-- # 5. Product Table
-- ###################

CREATE TABLE Product (
    ProductID VARCHAR(7) PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    ProductDescription TEXT
);

-- #####################
-- # 1. Department Table (without HeadEmployeeID FK)
-- #####################

CREATE TABLE Department (
    DepartmentID VARCHAR(7) PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
    -- HeadEmployeeID will be added later
);

-- ##################
-- # 2. Employee Table
-- ##################

CREATE TABLE Employee (
    EmployeeID VARCHAR(7) PRIMARY KEY,
    EmployeeType VARCHAR(50) NOT NULL,
    EmployeeName VARCHAR(50) NOT NULL,
    EmployeeAddress VARCHAR(100) NOT NULL,
    DepartmentID VARCHAR(7),
    ManagerID VARCHAR(7),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID)
);

-- Now, alter Department to add HeadEmployeeID FK
ALTER TABLE Department
ADD HeadEmployeeID VARCHAR(7) UNIQUE,
ADD FOREIGN KEY (HeadEmployeeID) REFERENCES Employee(EmployeeID);

-- ########################
-- # 10. Ingredient Table
-- ########################

CREATE TABLE Ingredient (
    IngredientID VARCHAR(7) PRIMARY KEY,
    IngredientName VARCHAR(50) NOT NULL,
    Allergens VARCHAR(255),
    SupplierID VARCHAR(7),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);

-- #########################
-- # 11. Chocolate Table
-- #########################

CREATE TABLE Chocolate (
    ChocolateID VARCHAR(7) PRIMARY KEY,
    ChocolateName VARCHAR(50) NOT NULL,
    ChocolateDesc VARCHAR(200) NOT NULL,
    ChocolatePrice DECIMAL(10,2) NOT NULL,
    ChocolateWeight INT NOT NULL,
    CategoryID VARCHAR(7) NOT NULL,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- ########################
-- # 12. Discount Table
-- ########################

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

-- ##################################
-- # 13. SubscriptionPackage Table
-- ##################################

CREATE TABLE SubscriptionPackage (
    SubscriptionID VARCHAR(7),
    PackageID VARCHAR(7),
    PRIMARY KEY (SubscriptionID, PackageID),
    FOREIGN KEY (SubscriptionID) REFERENCES Subscription(SubscriptionID),
    FOREIGN KEY (PackageID) REFERENCES Package(PackageID)
);

-- ##############################
-- # 14. PackageProduct Table
-- ##############################

CREATE TABLE PackageProduct (
    PackageID VARCHAR(7),
    ProductID VARCHAR(7),
    PRIMARY KEY (PackageID, ProductID),
    FOREIGN KEY (PackageID) REFERENCES Package(PackageID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- ####################################
-- # 15. CustomerSubscription Table
-- ####################################

CREATE TABLE CustomerSubscription (
    CustomerID VARCHAR(7) PRIMARY KEY,
    SubscriptionID VARCHAR(7),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (SubscriptionID) REFERENCES Subscription(SubscriptionID)
);

-- ########################
-- # 16. Review Table
-- ########################

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

-- ######################################
-- # 17. IngredientMeasurement Table
-- ######################################

CREATE TABLE IngredientMeasurement (
    IngredientID VARCHAR(7),
    ProductID VARCHAR(7),
    Measurement DECIMAL(10,2) NOT NULL,
    UnitOfMeasurement VARCHAR(50),
    PRIMARY KEY (IngredientID, ProductID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredient(IngredientID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- ##############################
-- # 18. SourceHistory Table
-- ##############################

CREATE TABLE SourceHistory (
    SourceID VARCHAR(7) PRIMARY KEY,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    Cost DECIMAL(10,2) NOT NULL,
    Quantity DECIMAL(10,2) NOT NULL,
    UnitOfMeasurement VARCHAR(50) NOT NULL,
    IngredientID VARCHAR(7),
    SupplierID VARCHAR(7),
    FOREIGN KEY (IngredientID) REFERENCES Ingredient(IngredientID),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID),
    CHECK (EndDate >= StartDate)
);

-- #############################
-- # 19. Appointment Table
-- #############################

CREATE TABLE Appointment (
    AppointmentID VARCHAR(7) PRIMARY KEY,
    AppointmentDateTime DATETIME NOT NULL,
    EmployeeID VARCHAR(7),
    CustomerID VARCHAR(7),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- #############################
-- # 20. Reservation Table
-- #############################

CREATE TABLE Reservation (
    ReservationID VARCHAR(7) PRIMARY KEY,
    ReservationDateTime DATETIME NOT NULL,
    NumberOfPeople INT NOT NULL,
    DurationOfDemonstrator TIME NOT NULL,
    DietaryPreferences VARCHAR(255),
    CustomerID VARCHAR(7),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- #####################################
-- # 21. ReservationDemonstrator Table
-- #####################################

CREATE TABLE ReservationDemonstrator (
    ReservationID VARCHAR(7),
    EmployeeID VARCHAR(7),
    PRIMARY KEY (ReservationID, EmployeeID),
    FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

-- ##############################
-- # 22. TastingExperience Table
-- ##############################

CREATE TABLE TastingExperience (
    ExperienceID VARCHAR(7) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Duration TIME NOT NULL,
    Cost DECIMAL(10,2) NOT NULL,
    ReservationID VARCHAR(7),
    FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID)
);

-- #########################
-- # 23. WorksOn Table
-- #########################

CREATE TABLE WorksOn (
    ExperienceID VARCHAR(7),
    EmployeeID VARCHAR(7),
    PRIMARY KEY (ExperienceID, EmployeeID),
    FOREIGN KEY (ExperienceID) REFERENCES TastingExperience(ExperienceID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

-- ################################
-- # 25. ExhibitComposition Table
-- ################################

CREATE TABLE ExhibitComposition (
    ParentExhibitID VARCHAR(7),
    ChildExhibitID VARCHAR(7),
    PRIMARY KEY (ParentExhibitID, ChildExhibitID),
    FOREIGN KEY (ParentExhibitID) REFERENCES Exhibit(ExhibitID),
    FOREIGN KEY (ChildExhibitID) REFERENCES Exhibit(ExhibitID)
);

-- ######################
-- # 26. eEvent Table
-- ######################

CREATE TABLE eEvent (
    eEventID VARCHAR(7) PRIMARY KEY,
    eEventName VARCHAR(50) NOT NULL,
    eEventDateTime DATETIME NOT NULL,
    eEventCost DECIMAL(10,2) NOT NULL,
    eEventCapacity INT NOT NULL,
    Recurring BOOLEAN NOT NULL,
    EmployeeID VARCHAR(7),
    ExhibitID VARCHAR(7),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (ExhibitID) REFERENCES Exhibit(ExhibitID),
    CHECK (eEventCapacity > 0)
);

-- ##########################
-- # 27. Demonstrate Table
-- ##########################

CREATE TABLE Demonstrate (
    EmployeeID VARCHAR(7),
    eEventID VARCHAR(7),
    Role VARCHAR(20) NOT NULL CHECK (Role IN ('Supervisor', 'Demonstrator')),
    PRIMARY KEY (EmployeeID, eEventID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (eEventID) REFERENCES eEvent(eEventID)
);

-- #########################
-- # 28. Booking Table
-- #########################

CREATE TABLE Booking (
    BookingID VARCHAR(7) PRIMARY KEY,
    BookingDateTime DATETIME NOT NULL,
    NumberOfPeople INT NOT NULL,
    EmployeeID VARCHAR(7),
    eEventID VARCHAR(7),
    CustomerID VARCHAR(7),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (eEventID) REFERENCES eEvent(eEventID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- #########################
-- # 29. HelpOut Table
-- #########################

CREATE TABLE HelpOut (
    CustomerID VARCHAR(7),
    EmployeeID VARCHAR(7),
    PRIMARY KEY (CustomerID, EmployeeID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

-- ####################################
-- # 30. EmployeeQualification Table
-- ####################################

CREATE TABLE EmployeeQualification (
    EmployeeID VARCHAR(7),
    EmployeeQualification VARCHAR(50),
    PRIMARY KEY (EmployeeID, EmployeeQualification),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

-- #############################
-- # 31. cContains Table
-- #############################

CREATE TABLE cContains (
    ProductID VARCHAR(7),
    IngredientID VARCHAR(7),
    PRIMARY KEY (ProductID, IngredientID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredient(IngredientID)
);

-- ##############################################################
-- # Insertion of Data into Tables (At least 5 records per table)
-- ##############################################################

-- Inserting into Department table
INSERT INTO Department (DepartmentID, DepartmentName) VALUES
('DEP0001', 'Sales'),
('DEP0002', 'Marketing'),
('DEP0003', 'Production'),
('DEP0004', 'Human Resources'),
('DEP0005', 'Customer Service');

-- Inserting into Employee table (Without ManagerID and Department Head for now)
INSERT INTO Employee (EmployeeID, EmployeeType, EmployeeName, EmployeeAddress) VALUES
('EMP0001', 'Sales Manager', 'Frank Miller', '101 First St.'),
('EMP0002', 'Marketing Specialist', 'Grace Lee', '202 Second Ave.'),
('EMP0003', 'Chocolatier', 'Henry Kim', '303 Third Blvd.'),
('EMP0004', 'HR Coordinator', 'Ivy Chen', '404 Fourth Rd.'),
('EMP0005', 'Customer Service Rep', 'Jack White', '505 Fifth Dr.'),
('EMP0006', 'Production Supervisor', 'Laura Green', '606 Sixth St.'),
('EMP0007', 'Assistant Chocolatier', 'Michael Brown', '707 Seventh Ave.'),
('EMP0008', 'Marketing Manager', 'Nina Patel', '808 Eighth Blvd.'),
('EMP0009', 'HR Manager', 'Oliver Smith', '909 Ninth Rd.'),
('EMP0010', 'Sales Associate', 'Paula Johnson', '1010 Tenth Dr.');

-- Updating Employee records to include DepartmentID and ManagerID
UPDATE Employee SET DepartmentID = 'DEP0001' WHERE EmployeeID IN ('EMP0001', 'EMP0010');
UPDATE Employee SET DepartmentID = 'DEP0002' WHERE EmployeeID IN ('EMP0002', 'EMP0008');
UPDATE Employee SET DepartmentID = 'DEP0003' WHERE EmployeeID IN ('EMP0003', 'EMP0007', 'EMP0006');
UPDATE Employee SET DepartmentID = 'DEP0004' WHERE EmployeeID IN ('EMP0004', 'EMP0009');
UPDATE Employee SET DepartmentID = 'DEP0005' WHERE EmployeeID = 'EMP0005';

-- Setting ManagerID for Employees
UPDATE Employee SET ManagerID = 'EMP0001' WHERE EmployeeID = 'EMP0010';
UPDATE Employee SET ManagerID = 'EMP0008' WHERE EmployeeID = 'EMP0002';
UPDATE Employee SET ManagerID = 'EMP0006' WHERE EmployeeID = 'EMP0003';
UPDATE Employee SET ManagerID = 'EMP0006' WHERE EmployeeID = 'EMP0007';
UPDATE Employee SET ManagerID = 'EMP0009' WHERE EmployeeID = 'EMP0004';
UPDATE Employee SET ManagerID = 'EMP0001' WHERE EmployeeID = 'EMP0005';

-- Setting HeadEmployeeID for Departments
UPDATE Department SET HeadEmployeeID = 'EMP0001' WHERE DepartmentID = 'DEP0001';
UPDATE Department SET HeadEmployeeID = 'EMP0008' WHERE DepartmentID = 'DEP0002';
UPDATE Department SET HeadEmployeeID = 'EMP0006' WHERE DepartmentID = 'DEP0003';
UPDATE Department SET HeadEmployeeID = 'EMP0009' WHERE DepartmentID = 'DEP0004';
UPDATE Department SET HeadEmployeeID = 'EMP0005' WHERE DepartmentID = 'DEP0005';

-- Inserting into Promotion table
INSERT INTO Promotion VALUES
    ('PRO0001', 'Opening Sale', 50.0),
    ('PRO0002', 'Valentine\'s Day', 10.0),
    ('PRO0003', 'Customer Birthday', 15.0),
    ('PRO0004', 'Christmas Sale', 20.0),
    ('PRO0005', 'World Chocolate Day', '30.0');

-- Inserting into Category table
INSERT INTO Category VALUES
    ('CAT0001', 'Dark Chocolate', 'Rich dark chocolate varieties'),
    ('CAT0002', 'Milk Chocolate', 'Creamy milk chocolate delights'),
    ('CAT0003', 'White Chocolate', 'Smooth white chocolate treats'),
    ('CAT0004', 'Assorted Chocolates', 'A mix of different chocolates'),
    ('CAT0005', 'Truffles', 'Decadent chocolate truffles');

-- Inserting into Product table
INSERT INTO Product (ProductID, ProductName, ProductDescription) VALUES
('PRD0001', 'Classic Dark Chocolate Bar', 'A classic dark chocolate bar made from premium cocoa beans.'),
('PRD0002', 'Milk Chocolate Almonds', 'Milk chocolate coated almonds.'),
('PRD0003', 'White Chocolate Raspberry', 'White chocolate infused with raspberry flavors.'),
('PRD0004', 'Assorted Chocolate Box', 'An assortment of various chocolates.'),
('PRD0005', 'Truffle Selection', 'A selection of our finest truffles.'),
('PRD0006', 'Caramel Filled Chocolates', 'Chocolates filled with gooey caramel.'),
('PRD0007', 'Mint Dark Chocolate', 'Dark chocolate with a hint of mint.'),
('PRD0008', 'Hazelnut Milk Chocolate', 'Milk chocolate with hazelnut pieces.'),
('PRD0009', 'Orange Infused Dark Chocolate', 'Dark chocolate with orange zest.'),
('PRD0010', 'Strawberry White Chocolate', 'White chocolate with strawberry bits.');

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

-- Inserting into Customer table with Australian phone numbers
INSERT INTO Customer VALUES
    ('CUS0001', 'Alice Brown', 'alice.brown@gmail.com', '0411 111 111', '1988-05-15'),
    ('CUS0002', 'Bob Smith', 'bob.smith@gmail.com', '0422 222 222', '1975-08-22'),
    ('CUS0003', 'Carol Davis', 'carol.davis@gmail.com', NULL, '1990-12-05'),
    ('CUS0004', 'David Wilson', 'david.wilson@yahoo.com', '0433 333 333', '1985-03-18'),
    ('CUS0005', 'Eva Johnson', 'eva.johnson@yahoo.com', '0444 444 444', '1992-07-09'),
    ('CUS0006', 'Frank Miller', 'frank.miller@yahoo.com', '0455 555 555', '1980-01-30'),
    ('CUS0007', 'Grace Lee', 'grace.lee@yahoo.com', '0466 666 666', '1993-07-21'),
    ('CUS0008', 'Henry Kim', 'henry.kim@gmail.com', '0477 777 777', '1982-11-11'),
    ('CUS0009', 'Ivy Chen', 'ivy.chen@gmail.com', '0488 888 888', '1989-02-14'),
    ('CUS0010', 'Jack White', 'jack.white@gmail.com', '0499 999 999', '1995-09-09');

-- Inserting into Ingredient table
INSERT INTO Ingredient (IngredientID, IngredientName, Allergens, SupplierID) VALUES
('ING0001', 'Cocoa Beans', NULL, 'SUP0001'),
('ING0002', 'Milk Powder', 'Dairy', 'SUP0002'),
('ING0003', 'Sugar', NULL, 'SUP0003'),
('ING0004', 'Hazelnuts', 'Nuts', 'SUP0004'),
('ING0005', 'Vanilla Extract', NULL, 'SUP0005'),
('ING0006', 'Almonds', 'Nuts', 'SUP0004'),
('ING0007', 'Raspberry Flavor', NULL, 'SUP0005'),
('ING0008', 'Caramel', 'Dairy', 'SUP0003'),
('ING0009', 'Mint Extract', NULL, 'SUP0005'),
('ING0010', 'Orange Zest', NULL, 'SUP0005');

-- Inserting into Chocolate table
INSERT INTO Chocolate VALUES
    ('CHOC001', 'Dark Chocolate Tablet', 'Small, bite-sized dark chocolate tablets', 17.99, 80, 'CAT0001'),
    ('CHOC002', 'Milk Chocolate Squares', 'Bite-sized milk chocolate squares', 19.99, 80, 'CAT0002'),
    ('CHOC003', 'Filled Milk Chocolate Bites', 'Milk chocolates with chocolate ganache', 24.99, 80, 'CAT0002'),
    ('CHOC004', 'Chocolate Truffles', 'Ganache balls coated in cocoa powder', 17.99, 80, 'CAT0005'),
    ('CHOC005', 'Dark Chocolate Roses', 'Rose-shaped chocolates with fillings', 24.99, 80, 'CAT0001'),
    ('CHOC006', 'Assorted Chocolate Collection', 'A mix of different chocolates', 29.99, 150, 'CAT0004'),
    ('CHOC007', 'White Chocolate Bars', 'Smooth white chocolate bars', 15.99, 80, 'CAT0003'),
    ('CHOC008', 'Milk Chocolate Almonds', 'Almonds coated in milk chocolate', 18.99, 100, 'CAT0002'),
    ('CHOC009', 'Dark Chocolate Orange', 'Dark chocolate with orange flavor', 20.99, 80, 'CAT0001'),
    ('CHOC010', 'White Chocolate Strawberry', 'White chocolate with strawberry bits', 22.99, 80, 'CAT0003');

-- Inserting into Discount table
INSERT INTO Discount VALUES
    ('PRO0001', 'CHOC001', '2023-02-01 08:00:00', '2023-02-02 18:00:00'),
    ('PRO0002', 'CHOC002', '2023-12-01 00:00:00', '2023-12-31 23:59:59'),
    ('PRO0003', 'CHOC003', '2023-11-20 00:00:00', '2023-11-27 23:59:59'),
    ('PRO0004', 'CHOC004', '2023-11-25 00:00:00', '2023-11-26 23:59:59'),
    ('PRO0005', 'CHOC005', '2023-12-28 00:00:00', '2024-01-05 23:59:59');

-- Inserting into SubscriptionPackage table
INSERT INTO SubscriptionPackage (SubscriptionID, PackageID) VALUES
('SUB0001', 'PAC0001'),
('SUB0001', 'PAC0002'),
('SUB0002', 'PAC0003'),
('SUB0003', 'PAC0004'),
('SUB0004', 'PAC0005'),
('SUB0005', 'PAC0001');

-- Inserting into PackageProduct table
INSERT INTO PackageProduct (PackageID, ProductID) VALUES
('PAC0001', 'PRD0001'),
('PAC0001', 'PRD0002'),
('PAC0002', 'PRD0003'),
('PAC0002', 'PRD0004'),
('PAC0003', 'PRD0005'),
('PAC0003', 'PRD0006'),
('PAC0004', 'PRD0007'),
('PAC0004', 'PRD0008'),
('PAC0005', 'PRD0009'),
('PAC0005', 'PRD0010');

-- Inserting into CustomerSubscription table
INSERT INTO CustomerSubscription (CustomerID, SubscriptionID) VALUES
('CUS0001', 'SUB0001'),
('CUS0002', 'SUB0002'),
('CUS0003', 'SUB0003'),
('CUS0004', 'SUB0004'),
('CUS0005', 'SUB0005');

-- Inserting into Review table
INSERT INTO Review VALUES
    ('REV0001', 8.0, 'A delicious dark chocolate.', '2023-02-02 13:22:54', 'CUS0001', 'CHOC001'),
    ('REV0002', 8.5, 'Loved the milk chocolate.', '2023-11-02 11:15:00', 'CUS0002', 'CHOC002'),
    ('REV0003', 7.0, 'Nice flavor but texture was okay.', '2023-11-03 12:30:00', 'CUS0003', 'CHOC003'),
    ('REV0004', 9.5, 'Truffles were amazing!', '2023-11-04 13:45:00', 'CUS0004', 'CHOC004'),
    ('REV0005', 8.0, 'Great assortment of chocolates.', '2023-11-05 15:00:00', 'CUS0005', 'CHOC006'),
    ('REV0006', 7.5, 'Good but a bit too sweet.', '2023-11-06 16:10:00', 'CUS0006', 'CHOC007'),
    ('REV0007', 9.0, 'Excellent with coffee.', '2023-11-07 17:20:00', 'CUS0007', 'CHOC001'),
    ('REV0008', 8.2, 'Loved the almond crunch.', '2023-11-08 18:30:00', 'CUS0008', 'CHOC008'),
    ('REV0009', 7.8, 'Orange flavor was subtle.', '2023-11-09 19:40:00', 'CUS0009', 'CHOC009'),
    ('REV0010', 8.9, 'Strawberry bits were delightful.', '2023-11-10 20:50:00', 'CUS0010', 'CHOC010');

-- Inserting into EmployeeQualification table
INSERT INTO EmployeeQualification (EmployeeID, EmployeeQualification) VALUES
('EMP0001', 'Certified Chocolatier'),
('EMP0002', 'Marketing Expert'),
('EMP0003', 'Master Chocolatier'),
('EMP0004', 'HR Specialist'),
('EMP0005', 'Customer Service Pro'),
('EMP0006', 'Production Manager'),
('EMP0007', 'Assistant Chocolatier'),
('EMP0008', 'Marketing Manager'),
('EMP0009', 'HR Manager'),
('EMP0010', 'Sales Associate');

-- Inserting into cContains table
INSERT INTO cContains (ProductID, IngredientID) VALUES
('PRD0001', 'ING0001'),
('PRD0001', 'ING0003'),
('PRD0001', 'ING0005'),
('PRD0002', 'ING0002'),
('PRD0002', 'ING0006'),
('PRD0003', 'ING0002'),
('PRD0003', 'ING0007'),
('PRD0004', 'ING0001'),
('PRD0004', 'ING0002'),
('PRD0004', 'ING0003'),
('PRD0005', 'ING0001'),
('PRD0005', 'ING0008');

-- Inserting into IngredientMeasurement table
INSERT INTO IngredientMeasurement (IngredientID, ProductID, Measurement, UnitOfMeasurement) VALUES
('ING0001', 'PRD0001', 50.00, 'grams'),
('ING0003', 'PRD0001', 20.00, 'grams'),
('ING0005', 'PRD0001', 5.00, 'grams'),
('ING0002', 'PRD0002', 30.00, 'grams'),
('ING0006', 'PRD0002', 15.00, 'grams'),
('ING0002', 'PRD0003', 40.00, 'grams'),
('ING0007', 'PRD0003', 10.00, 'grams'),
('ING0001', 'PRD0004', 25.00, 'grams'),
('ING0002', 'PRD0004', 25.00, 'grams'),
('ING0003', 'PRD0004', 25.00, 'grams'),
('ING0001', 'PRD0005', 50.00, 'grams'),
('ING0008', 'PRD0005', 10.00, 'grams');

-- Inserting into SourceHistory table
INSERT INTO SourceHistory (SourceID, StartDate, EndDate, Cost, Quantity, UnitOfMeasurement, IngredientID, SupplierID) VALUES
('SOH0001', '2023-10-01', '2023-10-31', 1000.00, 500.00, 'kg', 'ING0001', 'SUP0001'),
('SOH0002', '2023-09-01', '2023-09-30', 800.00, 300.00, 'kg', 'ING0002', 'SUP0002'),
('SOH0003', '2023-08-01', '2023-08-31', 600.00, 200.00, 'kg', 'ING0003', 'SUP0003'),
('SOH0004', '2023-07-01', '2023-07-31', 900.00, 400.00, 'kg', 'ING0004', 'SUP0004'),
('SOH0005', '2023-06-01', '2023-06-30', 700.00, 250.00, 'liters', 'ING0005', 'SUP0005'),
('SOH0006', '2023-05-01', '2023-05-31', 500.00, 150.00, 'kg', 'ING0006', 'SUP0004'),
('SOH0007', '2023-04-01', '2023-04-30', 300.00, 100.00, 'kg', 'ING0007', 'SUP0005'),
('SOH0008', '2023-03-01', '2023-03-31', 400.00, 120.00, 'kg', 'ING0008', 'SUP0003'),
('SOH0009', '2023-02-01', '2023-02-28', 200.00, 80.00, 'liters', 'ING0009', 'SUP0005'),
('SOH0010', '2023-01-01', '2023-01-31', 250.00, 90.00, 'kg', 'ING0010', 'SUP0005');

-- Inserting into Appointment table
INSERT INTO Appointment (AppointmentID, AppointmentDateTime, EmployeeID, CustomerID) VALUES
('APP0001', '2023-11-01 10:00:00', 'EMP0004', 'CUS0001'),
('APP0002', '2023-11-02 11:00:00', 'EMP0004', 'CUS0002'),
('APP0003', '2023-11-03 12:00:00', 'EMP0004', 'CUS0003'),
('APP0004', '2023-11-04 13:00:00', 'EMP0004', 'CUS0004'),
('APP0005', '2023-11-05 14:00:00', 'EMP0004', 'CUS0005');

-- Inserting into Reservation table
INSERT INTO Reservation (ReservationID, ReservationDateTime, NumberOfPeople, DurationOfDemonstrator, DietaryPreferences, CustomerID) VALUES
('RES0001', '2023-11-10 14:00:00', 2, '01:00:00', 'Nut-free', 'CUS0001'),
('RES0002', '2023-11-11 15:30:00', 3, '01:30:00', 'Gluten-free', 'CUS0002'),
('RES0003', '2023-11-12 16:00:00', 4, '02:00:00', 'Dairy-free', 'CUS0003'),
('RES0004', '2023-11-13 17:00:00', 5, '01:00:00', 'Vegan', 'CUS0004'),
('RES0005', '2023-11-14 18:00:00', 6, '01:15:00', 'No preferences', 'CUS0005');

-- Inserting into ReservationDemonstrator table
INSERT INTO ReservationDemonstrator (ReservationID, EmployeeID) VALUES
('RES0001', 'EMP0003'),
('RES0001', 'EMP0007'),
('RES0001', 'EMP0006'),
('RES0002', 'EMP0003'),
('RES0002', 'EMP0007'),
('RES0002', 'EMP0006'),
('RES0003', 'EMP0003'),
('RES0003', 'EMP0007'),
('RES0003', 'EMP0006'),
('RES0004', 'EMP0003'),
('RES0004', 'EMP0007'),
('RES0004', 'EMP0006'),
('RES0005', 'EMP0003'),
('RES0005', 'EMP0007'),
('RES0005', 'EMP0006');

-- Inserting into TastingExperience table
INSERT INTO TastingExperience (ExperienceID, Name, Duration, Cost, ReservationID) VALUES
('TAE0001', 'Dark Chocolate Tasting', '01:00:00', 50.00, 'RES0001'),
('TAE0002', 'Milk Chocolate Workshop', '01:30:00', 60.00, 'RES0002'),
('TAE0003', 'Truffle Making Class', '02:00:00', 80.00, 'RES0003'),
('TAE0004', 'Chocolate Pairing Experience', '01:15:00', 70.00, 'RES0004'),
('TAE0005', 'Chocolate History Tour', '00:45:00', 40.00, 'RES0005');

-- Inserting into WorksOn table
INSERT INTO WorksOn (ExperienceID, EmployeeID) VALUES
('TAE0001', 'EMP0003'),
('TAE0001', 'EMP0007'),
('TAE0001', 'EMP0006'),
('TAE0002', 'EMP0003'),
('TAE0002', 'EMP0007'),
('TAE0002', 'EMP0006'),
('TAE0003', 'EMP0003'),
('TAE0003', 'EMP0007'),
('TAE0003', 'EMP0006'),
('TAE0004', 'EMP0003'),
('TAE0004', 'EMP0007'),
('TAE0004', 'EMP0006'),
('TAE0005', 'EMP0003'),
('TAE0005', 'EMP0007'),
('TAE0005', 'EMP0006');

-- Inserting into Exhibit table
INSERT INTO Exhibit (ExhibitID, Description, NumberOfItem) VALUES
('EXH0001', 'Vintage Chocolate Wrappers', 50),
('EXH0002', 'Chocolate Sculptures', 20),
('EXH0003', 'Rare Cocoa Beans', 30),
('EXH0004', 'Historical Chocolate Tools', 40),
('EXH0005', 'Cocoa Plantation Model', 10);

-- Inserting into ExhibitComposition table
INSERT INTO ExhibitComposition (ParentExhibitID, ChildExhibitID) VALUES
('EXH0001', 'EXH0003'),
('EXH0001', 'EXH0004'),
('EXH0002', 'EXH0005');

-- Inserting into eEvent table
INSERT INTO eEvent (eEventID, eEventName, eEventDateTime, eEventCost, eEventCapacity, Recurring, EmployeeID, ExhibitID) VALUES
('EVE0001', 'Chocolate Festival', '2023-12-01 10:00:00', 100.00, 100, TRUE, 'EMP0001', 'EXH0001'),
('EVE0002', 'Holiday Chocolate Fair', '2023-12-15 11:00:00', 80.00, 80, FALSE, 'EMP0002', 'EXH0002'),
('EVE0003', 'Truffle Workshop', '2024-01-10 12:00:00', 50.00, 20, TRUE, 'EMP0003', 'EXH0003'),
('EVE0004', 'Chocolate Art Exhibition', '2023-11-20 13:00:00', 60.00, 50, FALSE, 'EMP0004', 'EXH0004'),
('EVE0005', 'Cocoa Bean Tasting', '2023-11-30 14:00:00', 40.00, 30, TRUE, 'EMP0005', 'EXH0005');

-- Inserting into Demonstrate table
INSERT INTO Demonstrate (EmployeeID, eEventID, Role) VALUES
('EMP0001', 'EVE0001', 'Supervisor'),
('EMP0010', 'EVE0001', 'Demonstrator'),
('EMP0002', 'EVE0002', 'Supervisor'),
('EMP0008', 'EVE0002', 'Demonstrator'),
('EMP0003', 'EVE0003', 'Supervisor'),
('EMP0007', 'EVE0003', 'Demonstrator'),
('EMP0004', 'EVE0004', 'Supervisor'),
('EMP0009', 'EVE0004', 'Demonstrator'),
('EMP0005', 'EVE0005', 'Supervisor'),
('EMP0006', 'EVE0005', 'Demonstrator');

-- Inserting into Booking table
INSERT INTO Booking (BookingID, BookingDateTime, NumberOfPeople, EmployeeID, eEventID, CustomerID) VALUES
('BOO0001', '2023-11-01 09:00:00', 5, 'EMP0001', 'EVE0001', 'CUS0001'),
('BOO0002', '2023-11-05 10:30:00', 3, 'EMP0002', 'EVE0002', 'CUS0002'),
('BOO0003', '2023-11-10 12:00:00', 4, 'EMP0003', 'EVE0003', 'CUS0003'),
('BOO0004', '2023-11-15 13:30:00', 2, 'EMP0004', 'EVE0004', 'CUS0004'),
('BOO0005', '2023-11-20 15:00:00', 6, 'EMP0005', 'EVE0005', 'CUS0005');

-- Inserting into HelpOut table
INSERT INTO HelpOut (CustomerID, EmployeeID) VALUES
('CUS0006', 'EMP0001'),
('CUS0007', 'EMP0002'),
('CUS0008', 'EMP0003'),
('CUS0009', 'EMP0004'),
('CUS0010', 'EMP0005');

-- Question-B
/* Explain in simple words what each query does and make sure you comment it
 */

-- An example of an answer to a Query

/* This query prints the names of all chocolates */

Select ChocolateName
from Chocolate;

-- ##############################################
-- Query 1: A query involving a single table with one condition. Insert your answer below
-- ##############################################
SELECT CustomerID, CustomerName, DateOfBirth
FROM Customer
WHERE DateOfBirth < '1990-01-01';
-- Selects all records in the Customer table with a date of birth before 1990/01/01

-- ##############################################
-- Query 2: A query involving a single table with two conditions, with one of the conditions that uses a wild card operator. Insert your answer below
-- ##############################################
SELECT ChocolateID, ChocolateName, ChocolatePrice
FROM Chocolate
WHERE ChocolateName LIKE '%Dark%' AND ChocolatePrice > 17.00;
-- Selects ChocolateID, ChocolateName and ChocolatePrice from the Chocolate table whose names contain the word "Dark" and whose price is over $17.00

-- ##############################################
-- Query 3: A query involving a join between at least two tables with an order by clause. Insert your answer below
-- ##############################################
SELECT
    Booking.BookingID,
    Booking.BookingDateTime,
    eEvent.eEventName
FROM
    Booking
JOIN eEvent ON Booking.eEventID = eEvent.eEventID
ORDER BY
    Booking.BookingDateTime;
-- Query joins the Booking and eEvent tables to display booking ID and datetime along with corresponding event names.
-- Results are ordered by the booking datetime.

-- ##############################################
-- Query 4: A query involving a single table with an aggregate and group by function. Insert your answer below
-- ##############################################
SELECT ChocolateID, AVG(ReviewRating) AS AverageRating
FROM Review
GROUP BY ChocolateID;
-- Query uses the aggregate function AVG to calculate the average review rating for given chocolate from the Review table. 
-- Grouped by ChocolateID