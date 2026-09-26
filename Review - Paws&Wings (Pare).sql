USE PAWSWINGS;

CREATE TABLE Review
(
    ReviewID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ProductID INT,
    ReviewText VARCHAR(255),
    ReviewDate DATE,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

CREATE TABLE Rating
(
    RatingID INT PRIMARY KEY,
    ReviewID INT,
    Rating INT,
    FOREIGN KEY (ReviewID) REFERENCES Review(ReviewID)
);

INSERT INTO Review VALUES
(601,'Arun Kumar',101,'Good quality product','2026-09-01'),
(602,'Priya Sharma',102,'Very useful and durable','2026-09-02'),
(603,'Rahul Kumar',103,'Good shampoo','2026-09-03'),
(604,'Divya Raj',104,'Nice collar','2026-09-04'),
(605,'Karthik S',105,'My cat loves it','2026-09-05'),
(606,'Anitha R',106,'Good fragrance','2026-09-06'),
(607,'Vijay M',107,'Strong and spacious cage','2026-09-07'),
(608,'Sneha P',109,'Good toy for birds','2026-09-08'),
(609,'Rohit K',110,'Excellent fish tank','2026-09-09'),
(610,'Meena S',112,'Beautiful aquarium plant','2026-09-10'),
(611,'Surya V',116,'Very comfortable bed','2026-09-11'),
(612,'Harini R',117,'Good quality bowl','2026-09-12'),
(613,'Ajay Kumar',118,'Useful pet brush','2026-09-13'),
(614,'Nandhini P',119,'Works well','2026-09-14'),
(615,'Dinesh R',120,'Good toy but small','2026-09-15'),
(616,'Keerthana S',101,'Excellent collar','2026-09-16'),
(617,'Manoj K',102,'Leash quality is good','2026-09-17'),
(618,'Swetha M',103,'Bad quality','2026-09-18'),
(619,'Gokul R',105,'Good product','2026-09-19'),
(620,'Pavithra S',116,'Very soft and comfortable','2026-09-20');

INSERT INTO Rating VALUES
(701,601,5),
(702,602,4),
(703,603,5),
(704,604,4),
(705,605,5),
(706,606,4),
(707,607,5),
(708,608,4),
(709,609,5),
(710,610,5),
(711,611,4),
(712,612,4),
(713,613,5),
(714,614,4),
(715,615,3),
(716,616,5),
(717,617,4),
(718,618,2),
(719,619,5),
(720,620,5);

SELECT * FROM Review;

SELECT * FROM Rating;

SELECT * FROM Review
WHERE ReviewText LIKE '%Good%';

SELECT * FROM Review
WHERE ReviewText LIKE '%Bad%';

SELECT * FROM Review
WHERE ReviewDate >= '2026-09-10';

SELECT * FROM Review
ORDER BY ReviewDate DESC;

SELECT * FROM Rating
WHERE Rating >= 4;

SELECT * FROM Rating
WHERE Rating < 4;

SELECT COUNT(*) AS TotalReviews
FROM Review;

SELECT COUNT(*) AS TotalRatings
FROM Rating;

SELECT AVG(Rating) AS AverageRating
FROM Rating;

SELECT MAX(Rating) AS HighestRating
FROM Rating;

SELECT MIN(Rating) AS LowestRating
FROM Rating;

SELECT Rating, COUNT(*) AS RatingCount
FROM Rating
GROUP BY Rating
ORDER BY Rating;

SELECT CustomerName, COUNT(*) AS ReviewCount
FROM Review
GROUP BY CustomerName
ORDER BY ReviewCount DESC;

SELECT * FROM Review;
SELECT * FROM Rating;