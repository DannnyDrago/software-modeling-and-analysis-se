
INSERT INTO SubscriptionPlan (PlanID, [Name], Price) VALUES
(1, 'Basic', 8.99),
(2, 'Standard', 13.99),
(3, 'Premium', 17.99);




INSERT INTO Users (UserID, Email, Password, Country, PaymentMethod, PlanID) VALUES
(1,'user1@example.com','pass1','USA','Credit Card',1),
(2,'user2@example.com','pass2','Canada','PayPal',2),
(3,'user3@example.com','pass3','UK','Debit Card',3),
(4,'user4@example.com','pass4','USA','Credit Card',1),
(5,'user5@example.com','pass5','Germany','PayPal',2),
(6,'user6@example.com','pass6','France','Credit Card',3),
(7,'user7@example.com','pass7','Italy','Debit Card',1),
(8,'user8@example.com','pass8','Spain','PayPal',2),
(9,'user9@example.com','pass9','Mexico','Credit Card',3),
(10,'user10@example.com','pass10','Brazil','Debit Card',1),
(11,'user11@example.com','pass11','USA','Credit Card',2),
(12,'user12@example.com','pass12','Canada','PayPal',3),
(13,'user13@example.com','pass13','UK','Debit Card',1),
(14,'user14@example.com','pass14','Germany','Credit Card',2),
(15,'user15@example.com','pass15','France','PayPal',3),
(16,'user16@example.com','pass16','Italy','Credit Card',1),
(17,'user17@example.com','pass17','Spain','Debit Card',2),
(18,'user18@example.com','pass18','Mexico','Credit Card',3),
(19,'user19@example.com','pass19','Brazil','PayPal',1),
(20,'user20@example.com','pass20','USA','Credit Card',2);




INSERT INTO [Profile] (ProfileID, ProfileName, AgeRestrictions, UserID) VALUES
(1,'John',18,1),
(2,'Jane',16,2),
(3,'Mike',18,3),
(4,'Anna',14,4),
(5,'Robert',18,5),
(6,'Lucy',12,6),
(7,'Tom',18,7),
(8,'Emma',10,8),
(9,'David',18,9),
(10,'Sophia',16,10),
(11,'Chris',18,11),
(12,'Mia',12,12),
(13,'Daniel',18,13),
(14,'Olivia',14,14),
(15,'James',18,15),
(16,'Isabella',10,16),
(17,'William',18,17),
(18,'Ava',12,18),
(19,'Henry',18,19),
(20,'Emily',14,20);




INSERT INTO Movie (MovieID, Title, Duration, ReleaseYear) VALUES
(1,'Red Notice',118,2021),
(2,'Ghostbusters: Afterlife',124,2021),
(3,'The Suicide Squad',132,2021),
(4,'Everything Everywhere All at Once',139,2022),
(5,'Dune',155,2021),
(6,'Soul',101,2020),
(7,'CODA',111,2021),
(8,'Army of the Dead',148,2021),
(9,'Stillwater',140,2021),
(10,'Pieces of a Woman',128,2020),
(11,'Nomadland',108,2020),
(12,'Shang-Chi and the Legend of the Ten Rings',132,2021),
(13,'Free Guy',115,2021),
(14,'No Time to Die',163,2021),
(15,'Spider-Man: No Way Home',148,2021),
(16,'The Green Knight',130,2021),
(17,'Encanto',102,2021),
(18,'Old',108,2021),
(19,'Jungle Cruise',127,2021),
(20,'Cruella',134,2021);



INSERT INTO Genre (GenreID, GenreName) VALUES
(1,'Action'),
(2,'Comedy'),
(3,'Drama'),
(4,'Horror'),
(5,'Romance'),
(6,'Sci-Fi'),
(7,'Fantasy'),
(8,'Thriller'),
(9,'Animation'),
(10,'Adventure'),
(11,'Crime'),
(12,'Family'),
(13,'Mystery');





INSERT INTO MovieGenre (MovieID, GenreID) VALUES
(1,1),(1,10),
(2,2),(2,7),
(3,1),(3,11),
(4,6),(4,7),
(5,6),(5,10),
(6,9),(6,3),
(7,3),(7,5),
(8,1),(8,4),
(9,3),(9,8),
(10,3),(10,11),
(11,3),(11,1),
(12,1),(12,7),
(13,1),(13,2),
(14,1),(14,8),
(15,1),(15,7),
(16,7),(16,13),
(17,9),(17,5),
(18,4),(18,8),
(19,1),(19,10),
(20,3),(20,11);




INSERT INTO Rating (RatingID, RatingValue, RatingDate, ProfileID, MovieID) VALUES
(1,5,'2023-06-01',1,1),
(2,4,'2023-06-02',2,1),
(3,3,'2023-06-03',3,2),
(4,5,'2023-06-04',4,3),
(5,4,'2023-06-05',5,4),
(6,2,'2023-06-06',6,5),
(7,3,'2023-06-07',7,6),
(8,5,'2023-06-08',8,6),
(9,4,'2023-06-09',9,7),
(10,5,'2023-06-10',10,8),
(11,3,'2023-06-11',11,9),
(12,4,'2023-06-12',12,9),
(13,5,'2023-06-13',13,10),
(14,2,'2023-06-14',14,11),
(15,3,'2023-06-15',15,12),
(16,5,'2023-06-16',16,12),
(17,4,'2023-06-17',17,13),
(18,5,'2023-06-18',18,14),
(19,3,'2023-06-19',19,15),
(20,4,'2023-06-20',20,16);






INSERT INTO ViewHistory (HistoryID, WatchDate, WatchDuration, Completed, ProfileID, MovieID) VALUES
(1,'2023-06-01',60,0,1,1),
(2,'2023-06-02',118,1,2,1),
(3,'2023-06-03',95,0,3,2),
(4,'2023-06-04',132,1,4,3),
(5,'2023-06-05',50,0,5,4),
(6,'2023-06-06',101,1,6,5),
(7,'2023-06-07',111,1,7,6),
(8,'2023-06-08',60,0,8,6),
(9,'2023-06-09',140,1,9,7),
(10,'2023-06-10',128,1,10,8),
(11,'2023-06-11',108,1,11,9),
(12,'2023-06-12',50,0,12,9),
(13,'2023-06-13',140,1,13,10),
(14,'2023-06-14',70,0,14,11),
(15,'2023-06-15',132,1,15,12),
(16,'2023-06-16',60,0,16,12),
(17,'2023-06-17',115,1,17,13),
(18,'2023-06-18',163,1,18,14),
(19,'2023-06-19',148,1,19,15),
(20,'2023-06-20',130,1,20,16);

