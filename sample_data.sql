-- Insert Customers
INSERT INTO Customers VALUES (1, 'Ravi Kumar', '9876543210', 'Delhi');
INSERT INTO Customers VALUES (2, 'Anjali Mehra', '9988776655', 'Mumbai');

-- Insert Menu Items
INSERT INTO Menu VALUES (1, 'Margherita', 'Medium', 250); 
INSERT INTO Menu VALUES (2, 'Pepperoni', 'Large', 450); 
INSERT INTO Menu VALUES (3, 'Farmhouse', 'Small', 200);

-- Insert Orders
INSERT INTO Orders (CustomerID, PizzaID, Quantity, OrderDate) 
VALUES (1, 2, 1, SYSDATE);

INSERT INTO Orders (CustomerID, PizzaID, Quantity, OrderDate) 
VALUES (2, 1, 2, SYSDATE);