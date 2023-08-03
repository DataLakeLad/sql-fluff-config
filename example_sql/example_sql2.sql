--Example with Alias joins
SELECT p.Name AS ProductName, (OrderQty * UnitPrice) as NonDiscountSales,((OrderQty * UnitPrice) * UnitPriceDiscount) as Discounts
FROM Production.Product AS p 
INNER JOIN Sales.SalesOrderDetail AS sod
ON p.ProductID = sod.ProductID 
ORDER BY ProductName DESC
