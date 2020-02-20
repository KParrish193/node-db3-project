-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT product.ProductName, category.CategoryName
FROM Product
INNER JOIN Category ON product.CategoryId=category.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.Id, sh.CompanyName, o.OrderDate
FROM "Order" as "o"
INNER JOIN "Shipper" as "sh" ON o.ShipVia = sh.Id
WHERE o.OrderDate < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT prod.ProductName, o.Quantity
FROM OrderDetail as o
INNER JOIN "Product" AS "prod" ON prod.Id = o.ProductId
WHERE o.OrderId = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.Id AS "Order ID", cu.CompanyName AS "Customer Company Name", e.LastName AS "Employee Last Name"
FROM "Order" as "o"
INNER JOIN "Customer" AS "cu" ON o.CustomerId = cu.Id
INNER JOIN "Employee" AS "e" ON o.EmployeeId = e.Id