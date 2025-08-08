-- Customers Table
CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    Phone VARCHAR2(15),
    Address VARCHAR2(200)
);

-- Menu Table
CREATE TABLE Menu (
    PizzaID NUMBER PRIMARY KEY,
    PizzaName VARCHAR2(100),
    Size_ VARCHAR2(20),
    Price NUMBER(6,2)
);

-- Orders Table
CREATE TABLE Orders (
    OrderID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    PizzaID NUMBER,
    Quantity NUMBER,
    OrderDate DATE,
    Status_ VARCHAR2(30),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID), 
    FOREIGN KEY (PizzaID) REFERENCES Menu(PizzaID)
);