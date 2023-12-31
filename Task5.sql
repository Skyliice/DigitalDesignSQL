  Select MIN(SalesOrderHeader.OrderDate) AS FirstOrderDate,Customers.LastName, Customers.FirstName, 
   STRING_AGG(CONCAT(Product.Name, ' ', 'Quantity: ', SalesOrderDetail.OrderQty, ' pieces'), ', ') AS OrderDetails
   from [AdventureWorks2016].[Sales].[vIndividualCustomer] as Customers
  JOIN Person.BusinessEntity on BusinessEntity.BusinessEntityID = Customers.BusinessEntityID
  JOIN Sales.Customer on Sales.Customer.PersonID = Customers.BusinessEntityID
  JOIN Sales.SalesOrderHeader on SalesOrderHeader.CustomerID= Sales.Customer.CustomerID
  JOIN Sales.SalesOrderDetail on SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID
  JOIN Production.Product on SalesOrderDetail.ProductID = Product.ProductID
  Group by
  Customers.LastName, 
  Customers.FirstName, 
 Sales.Customer.CustomerID
  Having MIN(SalesOrderHeader.OrderDate) = (
    SELECT
      MIN(OrderDate)
    FROM
      Sales.SalesOrderHeader
    WHERE
      CustomerID = Sales.Customer.CustomerID
  )
  Order by FirstOrderDate DESC
 