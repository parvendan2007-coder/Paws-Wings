USE PAWSWINGS;

SELECT * FROM Category;
SELECT DISTINCT CategoryName FROM Category;
SELECT * FROM Category WHERE Category > 2;
SELECT * FROM Category ORDER BY CategoryName;

SELECT * FROM Product;
SELECT DISTINCT Category FROM Product;
SELECT * FROM Product WHERE Price > 500;
SELECT * FROM Product ORDER BY Price;

SELECT * FROM Seller;
SELECT DISTINCT Address FROM Seller;
SELECT * FROM Seller WHERE SellerID > 210;
SELECT * FROM Seller ORDER BY SellerName;

SELECT * FROM Inventory;
SELECT DISTINCT AvailabilityStatus FROM Inventory;
SELECT * FROM Inventory WHERE Stock > 0;
SELECT * FROM Inventory ORDER BY Stock;

SELECT * FROM Orders;
SELECT DISTINCT OrderStatus FROM Orders;
SELECT * FROM Orders WHERE OrderStatus = 'Pending';
SELECT * FROM Orders ORDER BY TotalAmt;

SELECT * FROM Order_Details;
SELECT DISTINCT ProductID FROM Order_Details;
SELECT * FROM Order_Details WHERE Quantity > 1;
SELECT * FROM Order_Details ORDER BY UnitPrice;

SELECT * FROM Payment;
SELECT DISTINCT PaymentMode FROM Payment;
SELECT * FROM Payment WHERE PaymentStatus = 'Successful';
SELECT * FROM Payment ORDER BY PaymentAmount;

SELECT * FROM Review;
SELECT DISTINCT CustomerName FROM Review;
SELECT * FROM Review WHERE ReviewText LIKE '%Good%';
SELECT * FROM Review ORDER BY ReviewDate;

SELECT * FROM Rating;
SELECT DISTINCT Rating FROM Rating;
SELECT * FROM Rating WHERE Rating >= 4;
SELECT * FROM Rating ORDER BY Rating;