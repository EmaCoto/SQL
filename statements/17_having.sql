SELECT * FROM users HAVING age > 20; -- Me trae de toda la tabla los usuarios que tengan mas de 20 en su campo age

SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country HAVING COUNT(CustomerID) > 5;  --La siguiente declaración SQL enumera la cantidad de clientes en cada país. Incluya solo países con más de 5 clientes:
