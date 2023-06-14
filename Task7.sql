Alter PROCEDURE GetSingleMaleEmployeesByBirthDateRange
    @FromDate date,
    @ToDate date,
    @Count int OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT @Count = COUNT(*)
    FROM [AdventureWorks2016].[HumanResources].[Employee] AS e
    JOIN [AdventureWorks2016].[Person].[Person] AS p ON e.BusinessEntityID = p.BusinessEntityID
    WHERE e.MaritalStatus = 'S'
        AND e.Gender = 'M'
        AND e.BirthDate >= @FromDate
        AND e.BirthDate <= @ToDate;

    SELECT p.FirstName, p.LastName, e.BirthDate
    FROM [AdventureWorks2016].[HumanResources].[Employee] AS e
    JOIN [AdventureWorks2016].[Person].[Person] AS p ON e.BusinessEntityID = p.BusinessEntityID
    WHERE e.MaritalStatus = 'S'
        AND e.Gender = 'M'
        AND e.BirthDate >= @FromDate
        AND e.BirthDate <= @ToDate;

END;

DECLARE @Count int;

EXEC GetSingleMaleEmployeesByBirthDateRange '1980-01-01', '2020-12-31', @Count OUTPUT;

SELECT @Count;