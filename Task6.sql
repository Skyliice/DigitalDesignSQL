WITH EmployeeHierarchy AS (
  SELECT 
    Employee.BusinessEntityID, 
    FirstName, 
    LastName, 
    MiddleName, 
    HireDate, 
    BirthDate, 
    OrganizationNode, 
    OrganizationLevel
  FROM 
    [AdventureWorks2016].[HumanResources].[Employee]
	JOIN [AdventureWorks2016].[HumanResources].[vEmployee] on vEmployee.BusinessEntityID=Employee.BusinessEntityID
)
SELECT 
      CONCAT(manag.[LastName],' '
      ,SUBSTRING(manag.[FirstName], 1, 1),'.',SUBSTRING(manag.[MiddleName], 1, 1)) AS ManagerName, manag.HireDate, manag.BirthDate, CONCAT(empl.[LastName],' '
      ,SUBSTRING(empl.[FirstName], 1, 1),'.',SUBSTRING(empl.[MiddleName], 1, 1)) as EmployeeName,
	  empl.HireDate,empl.BirthDate
  FROM EmployeeHierarchy as empl
  JOIN EmployeeHierarchy AS manag ON empl.[OrganizationNode].GetAncestor(1) = manag.[OrganizationNode]
  WHERE 
  manag.BirthDate > empl.BirthDate AND 
  manag.HireDate > empl.HireDate
  ORDER BY 
  manag.OrganizationLevel DESC,
  manag.LastName ASC,
  empl.LastName ASC;
