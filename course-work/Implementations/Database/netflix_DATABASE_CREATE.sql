CREATE DATABASE NETFLIX
go

USE NETFLIX 
GO

CREATE TABLE SubscriptionPlan (
    PlanID INT PRIMARY KEY,
    [Name] VARCHAR(50) NOT NULL,
    Price DECIMAL(5,2) NOT NULL
);


CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Email VARCHAR(50) NOT NULL UNIQUE,
    Password VARCHAR(50) NOT NULL,
    Country VARCHAR(50) NULL,
    PaymentMethod VARCHAR(50) NULL,
    PlanID INT NULL,
    FOREIGN KEY (PlanID) REFERENCES SubscriptionPlan(PlanID)
);



CREATE TABLE [Profile] (
    ProfileID INT PRIMARY KEY,
    ProfileName VARCHAR(50) NOT NULL,
    AgeRestrictions INT NULL,
    UserID INT NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);


CREATE TABLE Movie (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Duration INT NULL,
    ReleaseYear INT NULL
);


CREATE TABLE Genre (
    GenreID INT PRIMARY KEY,
    GenreName VARCHAR(50) NOT NULL
);



CREATE TABLE MovieGenre (
    MovieID INT NOT NULL,
    GenreID INT NOT NULL,
    PRIMARY KEY (MovieID, GenreID),
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID),
    FOREIGN KEY (GenreID) REFERENCES Genre(GenreID)
);

CREATE TABLE Rating (
    RatingID INT PRIMARY KEY,
    RatingValue INT NOT NULL,
    RatingDate DATETIME NULL,
    ProfileID INT NOT NULL,
    MovieID INT NOT NULL,
    FOREIGN KEY (ProfileID) REFERENCES Profile(ProfileID),
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID)
);


CREATE TABLE ViewHistory (
    HistoryID INT PRIMARY KEY,
    WatchDate DATETIME NULL,
    WatchDuration INT NULL,
    Completed BIT NULL,
    ProfileID INT NOT NULL,
    MovieID INT NOT NULL,
    FOREIGN KEY (ProfileID) REFERENCES Profile(ProfileID),
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID)
);
go