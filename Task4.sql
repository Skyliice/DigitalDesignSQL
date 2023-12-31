  Select Person.LastName, Person.FirstName, Product.Name,sum(SalesOrderDetail.OrderQty) as TotalCount from Sales.SalesOrderDetail
  JOIN Sales.SalesOrderHeader on SalesOrderHeader.SalesOrderID= Sales.SalesOrderDetail.SalesOrderID
  JOIN Sales.Customer on Sales.Customer.CustomerID = SalesOrderHeader.CustomerID
  JOIN Person.Person on Person.BusinessEntityID = Sales.Customer.PersonID
  JOIN Production.Product on Sales.SalesOrderDetail.ProductID = Production.Product.ProductID
  Group by 
    Person.LastName, 
    Person.FirstName, 
    Product.Name
 Having sum(SalesOrderDetail.OrderQty) > 15
 Order by TotalCount desc, CONCAT(Person.LastName,' ',Person.FirstName) asc