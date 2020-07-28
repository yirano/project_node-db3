-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT p."ProductName", c."CategoryName"
FROM "Product" AS p
JOIN "Category" AS c
WHERE p."CategoryId" = c."Id"
;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT o."Id", s."CompanyName"
FROM "Order" AS o
JOIN "Shipper" AS s
WHERE o."ShipVia" = s."Id"
AND o."OrderDate" < '2012-08-09'
;

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT p."ProductName", o."Quantity"
FROM "ProductDetails_V" AS p
JOIN "OrderDetail" AS o
WHERE o."ProductId" = p."Id"
AND o."OrderId" = 10251
ORDER BY p."ProductName"
;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT "Order"."Id" as "Order ID", 
"Customer"."CompanyName" as "Customer's Company",
"Employee"."LastName" as "Employee's Lastname"
FROM "Order"
JOIN "Customer", "Employee"
WHERE "Customer"."Id" = "Order"."CustomerId"
AND "Order"."EmployeeId" = "Employee"."Id"
;