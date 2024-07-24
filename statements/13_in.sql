SELECT * FROM users WHERE name IN ('emanuel', 'yula'); -- Me muestra todos los campos de la tabla name que sean 'emanuel' y 'yula' (es una especie de filtrado)
SELECT * FROM users WHERE name NOT IN ('emanuel', 'yula') -- Me muestra todos los campos de la tabla name que NO sean 'emanuel' y 'yula' (es una especie de filtrado)


SELECT * FROM Customers WHERE CustomerID IN (SELECT CustomerID FROM Orders); --Return all customers that have an order in the Orders table
SELECT * FROM CustomersWHERE CustomerID NOT IN (SELECT CustomerID FROM Orders); --Return all customers that have NOT placed any orders in the Orders table

