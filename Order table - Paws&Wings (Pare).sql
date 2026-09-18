USE PAWSWINGS;

CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ProductQuantity INT,
    TotalAmt DECIMAL(10,2),
    OrderStatus VARCHAR(20)
);

CREATE TABLE Order_Details
(
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10,2),

    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

INSERT INTO Orders VALUES
(401,'Arun Kumar',2,1000.00,'Pending'),
(402,'Priya Sharma',1,700.00,'Delivered'),
(403,'Rahul Kumar',3,1350.00,'Pending'),
(404,'Divya Raj',2,800.00,'Delivered'),
(405,'Karthik S',1,1500.00,'Pending'),
(406,'Anitha R',4,1400.00,'Delivered'),
(407,'Vijay M',2,900.00,'Pending'),
(408,'Sneha P',1,2000.00,'Delivered'),
(409,'Rohit K',3,1200.00,'Pending'),
(410,'Meena S',2,800.00,'Delivered'),
(411,'Surya V',1,500.00,'Pending'),
(412,'Harini R',2,700.00,'Delivered'),
(413,'Ajay Kumar',3,1050.00,'Pending'),
(414,'Nandhini P',1,1200.00,'Delivered'),
(415,'Dinesh R',2,1000.00,'Pending'),
(416,'Keerthana S',1,450.00,'Delivered'),
(417,'Manoj K',4,1400.00,'Pending'),
(418,'Swetha M',2,600.00,'Delivered'),
(419,'Gokul R',1,350.00,'Pending'),
(420,'Pavithra S',3,1200.00,'Delivered');

INSERT INTO Order_Details VALUES
(501,401,101,2,500.00),
(502,402,102,1,700.00),
(503,403,103,3,450.00),
(504,404,104,2,400.00),
(505,405,107,1,1500.00),
(506,406,109,4,350.00),
(507,407,103,2,450.00),
(508,408,110,1,2000.00),
(509,409,117,3,400.00),
(510,410,117,2,400.00),
(511,411,101,1,500.00),
(512,412,105,2,350.00),
(513,413,105,3,350.00),
(514,414,116,1,1200.00),
(515,415,120,2,500.00),
(516,416,103,1,450.00),
(517,417,109,4,350.00),
(518,418,112,2,300.00),
(519,419,105,1,350.00),
(520,420,112,3,400.00);

SELECT * FROM Orders;

SELECT * FROM Order_Details;

UPDATE Orders
SET OrderStatus = 'Delivered'
WHERE OrderID = 401;

UPDATE Orders
SET ProductQuantity = 5
WHERE OrderID = 403;

SELECT *
FROM Orders
WHERE OrderStatus = 'Pending';

SELECT *
FROM Orders
WHERE OrderStatus = 'Delivered';

SELECT Count(*) From Orders
Group By CustomerName;

SELECT SUM(TotalAmt) From Orders
Group By CustomerName;

SELECT * FROM Orders;

SELECT * FROM Order_Details;