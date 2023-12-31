SELECT TOP 10
    Address.City,
    COUNT(*) AS CustomerCount
FROM
    Person.Address
	JOIN Person.BusinessEntityAddress ON Address.AddressID = BusinessEntityAddress.AddressID
	JOIN Person.BusinessEntity ON BusinessEntityAddress.BusinessEntityID = BusinessEntity.BusinessEntityID
    JOIN Sales.Customer ON Customer.PersonID = Person.BusinessEntity.BusinessEntityID
    LEFT JOIN Sales.Store ON Store.BusinessEntityID=BusinessEntity.BusinessEntityID
WHERE
	City NOT IN (SELECT Distinct [City] [BusinessEntityID]
  FROM [AdventureWorks2016].[Sales].[vStoreWithAddresses])
GROUP BY
    Address.City
ORDER BY
    CustomerCount DESC;