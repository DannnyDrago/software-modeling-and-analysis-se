CREATE FUNCTION fn_AverageMovieRating (@MovieID INT)
RETURNS DECIMAL(4,2)
AS
BEGIN
    DECLARE @AvgRating DECIMAL(4,2);

    SELECT @AvgRating = AVG(CAST(RatingValue AS DECIMAL(4,2)))
    FROM Rating
    WHERE MovieID = @MovieID;

    RETURN @AvgRating;
END;
GO





CREATE PROCEDURE AddUser
    @Email VARCHAR(50),
    @Password VARCHAR(50),
    @Country VARCHAR(50),
    @PaymentMethod VARCHAR(50),
    @PlanID INT
AS
BEGIN
    SET NOCOUNT ON;

    
    IF EXISTS (SELECT 1 FROM Users WHERE Email = @Email)
    BEGIN
        PRINT 'Error: Email already exists.';
        RETURN;
    END

    INSERT INTO Users (Email, Password, Country, PaymentMethod, PlanID)
    VALUES (@Email, @Password, @Country, @PaymentMethod, @PlanID);

    PRINT 'User created successfully.';
END;
GO






--
CREATE TRIGGER TR_PreventDuplicateRating
ON Rating
AFTER INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM Rating r
        JOIN inserted i 
          ON r.ProfileID = i.ProfileID 
         AND r.MovieID = i.MovieID
         AND r.RatingValue = i.RatingValue
    )
    BEGIN
        RAISERROR('This profile has already given the same rating value to this movie.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
GO




