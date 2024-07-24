SELECT MAX(age) FROM users GROUP BY age;

SELECT COUNT(age), age FROM users GROUP BY age; -- en este caso me cuenta cuantas edades hay iguales y hay cinco campos en age con la misma edad me estaria mandando como resultado 5

SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age ASC; -- otro ejemplo
SELECT COUNT(age), age FROM users WHERE age > 20 GROUP BY age ORDER BY age ASC; -- otro ejemplo con un filtrado diferente, en este caso solo me muestra los usuarios mayores de 20

SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country ORDER BY COUNT(CustomerID) DESC; -- The following SQL statement lists the number of customers in each country, sorted high to low