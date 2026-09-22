USE PAWSWINGS;

CREATE TABLE Payment
(
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentMode VARCHAR(20),
    PaymentDate DATE,
    PaymentAmount DECIMAL(10,2),
    PaymentStatus VARCHAR(20),

    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Payment VALUES
(601,401,'UPI','2026-09-01',1000.00,'Successful'),
(602,402,'Card','2026-09-02',700.00,'Successful'),
(603,403,'Cash','2026-09-03',1350.00,'Successful'),
(604,404,'UPI','2026-09-04',800.00,'Successful'),
(605,405,'Card','2026-09-05',1500.00,'Failed'),
(606,406,'Cash','2026-09-06',1400.00,'Successful'),
(607,407,'UPI','2026-09-07',900.00,'Successful'),
(608,408,'Card','2026-09-08',2000.00,'Successful'),
(609,409,'Cash','2026-09-09',1200.00,'Failed'),
(610,410,'UPI','2026-09-10',800.00,'Successful'),
(611,411,'Card','2026-09-11',500.00,'Successful'),
(612,412,'Cash','2026-09-12',700.00,'Successful'),
(613,413,'UPI','2026-09-13',1050.00,'Failed'),
(614,414,'Card','2026-09-14',1200.00,'Successful'),
(615,415,'Cash','2026-09-15',1000.00,'Successful'),
(616,416,'UPI','2026-09-16',450.00,'Successful'),
(617,417,'Card','2026-09-17',1400.00,'Failed'),
(618,418,'Cash','2026-09-18',600.00,'Successful'),
(619,419,'UPI','2026-09-19',350.00,'Successful'),
(620,420,'Card','2026-09-20',1200.00,'Successful');

SELECT * FROM Payment;

UPDATE Payment
SET PaymentStatus = 'Successful'
WHERE PaymentID = 605;

SELECT *
FROM Payment
WHERE PaymentStatus = 'Successful';

SELECT *
FROM Payment
WHERE PaymentStatus = 'Failed';

SELECT *
FROM Payment
WHERE PaymentMode = 'UPI';

SELECT *
FROM Payment
WHERE PaymentMode = 'Card';

SELECT *
FROM Payment
WHERE PaymentMode = 'Cash';

SELECT PaymentMode, COUNT(*) AS TransactionCount
FROM Payment
GROUP BY PaymentMode;

SELECT PaymentMode, SUM(PaymentAmount) AS TotalAmountReceived
FROM Payment
WHERE PaymentStatus = 'Successful'
GROUP BY PaymentMode;