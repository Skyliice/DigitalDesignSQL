  Select Customers.LastName, Customers.FirstName, Product.Name,Count(*) as TotalCount from [AdventureWorks2016].[Sales].[vIndividualCustomer] as Customers
  JOIN Person.BusinessEntity on BusinessEntity.BusinessEntityID = Customers.BusinessEntityID
  JOIN Sales.Customer on Sales.Customer.PersonID = Customers.BusinessEntityID
  JOIN Sales.SalesOrderHeader on SalesOrderHeader.CustomerID= Sales.Customer.CustomerID
  JOIN Sales.SalesOrderDetail on SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID
  JOIN Production.Product on SalesOrderDetail.ProductID = Product.ProductID
  Group by 
    Customers.LastName, 
    Customers.FirstName, 
    Product.Name
 Having Count(*) > 15
 Order by TotalCount desc, CONCAT(Customers.LastName,' ',Customers.FirstName) asc
 