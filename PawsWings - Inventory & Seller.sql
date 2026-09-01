USE PAWSWINGS;

CREATE TABLE Seller
(
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(100),
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(200)
);

INSERT INTO Seller VALUES
(201,'Happy Paws Suppliers','9876543210','happypaws@gmail.com','Chennai'),
(202,'Pet Care World','9876543211','petcareworld@gmail.com','Coimbatore'),
(203,'Animal Needs Hub','9876543212','animalneedshub@gmail.com','Madurai'),
(204,'Paw Paradise','9876543213','pawparadise@gmail.com','Trichy'),
(205,'Pet Planet Suppliers','9876543214','petplanet@gmail.com','Salem'),
(206,'Furry Friends Supply','9876543215','furryfriends@gmail.com','Chennai'),
(207,'Royal Pet Supplies','9876543216','royalpet@gmail.com','Bangalore'),
(208,'Healthy Paws Store','9876543217','healthypaws@gmail.com','Hyderabad'),
(209,'Pet Essentials Hub','9876543218','petessentialshub@gmail.com','Chennai'),
(210,'Pawsome Products','9876543219','pawsome@gmail.com','Pondicherry'),
(211,'Pet World Traders','9876543220','petworld@gmail.com','Madurai'),
(212,'Happy Tails Suppliers','9876543221','happytails@gmail.com','Trichy'),
(213,'Animal Care Products','9876543222','animalcare@gmail.com','Salem'),
(214,'Pet Lovers Hub','9876543223','petlovers@gmail.com','Coimbatore'),
(215,'Smart Pet Supplies','9876543224','smartpet@gmail.com','Chennai'),
(216,'Paw Mart Suppliers','9876543225','pawmart@gmail.com','Bangalore'),
(217,'Pet Choice Traders','9876543226','petchoice@gmail.com','Hyderabad'),
(218,'Best Pet Needs','9876543227','bestpetneeds@gmail.com','Madurai'),
(219,'Pet House Suppliers','9876543228','pethouse@gmail.com','Chennai'),
(220,'Care & Paws','9876543229','careandpaws@gmail.com','Salem'),
(221,'Pet Zone Suppliers','9876543230','petzone@gmail.com','Coimbatore'),
(222,'Paw World Traders','9876543231','pawworld@gmail.com','Trichy'),
(223,'Pet Basket Suppliers','9876543232','petbasket@gmail.com','Chennai'),
(224,'Animal World Traders','9876543233','animalworld@gmail.com','Madurai'),
(225,'Paws & Care Suppliers','9876543234','pawscare@gmail.com','Pondicherry');

SELECT * FROM Seller;

CREATE TABLE Inventory
(
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    SellerID INT,
    AvailabilityStatus VARCHAR(20),
    Stock INT,

    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (SellerID) REFERENCES Seller(SellerID)
);

INSERT INTO Inventory VALUES
(301,101,201,'Available',35),
(302,102,202,'Available',25),
(303,103,203,'Available',20),
(304,104,204,'Available',30),
(305,105,205,'Available',25),
(306,106,206,'Available',20),
(307,107,207,'Available',15),
(308,109,208,'Available',25),
(309,110,209,'Available',15),
(310,112,210,'Available',25),
(311,116,211,'Available',20),
(312,117,212,'Available',30),
(313,118,213,'Available',25),
(314,119,214,'Available',20),
(315,120,215,'Available',30),

(316,101,216,'Available',35),
(317,102,217,'Available',25),
(318,103,218,'Available',20),
(319,104,219,'Available',30),
(320,105,220,'Available',25),
(321,106,221,'Available',20),
(322,107,222,'Available',15),
(323,109,223,'Available',25),
(324,110,224,'Available',15),
(325,116,225,'Available',20);

SELECT * FROM Inventory;

UPDATE Inventory
SET Stock = 0,
    AvailabilityStatus = 'Unavailable'
WHERE InventoryID = 301;

UPDATE Inventory
SET Stock = 10,
    AvailabilityStatus = 'Available'
WHERE InventoryID = 301;

UPDATE Inventory
SET Stock = 0,
    AvailabilityStatus = 'Unavailable'
WHERE InventoryID = 305;

UPDATE Inventory
SET Stock = 15,
    AvailabilityStatus = 'Available'
WHERE InventoryID = 305;

UPDATE Seller
SET ContactNo = '9998887776',
    Email = 'newhappypaws@gmail.com',
    Address = 'Chengalpattu'
WHERE SellerID = 201;

SELECT * FROM Seller
WHERE SellerID = 201;

DELETE FROM Inventory
WHERE InventoryID = 325;

SELECT * FROM Inventory;

SELECT *
FROM Inventory
WHERE AvailabilityStatus = 'Available';

SELECT * FROM Inventory
WHERE AvailabilityStatus = 'Unavailable';

SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";

SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";

SELECT * FROM Inventory
ORDER BY Stock DESC;

SELECT * FROM Inventory;
SELECT * FROM Seller;