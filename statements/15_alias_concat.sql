
-- ALIAS
SELECT name, init_date AS 'fecha' FROM users; -- Sirve para darle un alias (pronombre) a alguna columna, en este caso se le da el alias a init_date y su nombre nuevo seria fecha
SELECT name, init_date AS 'fecha' FROM users WHERE name='emanuel'; -- Me muestra los usuarios con el nombre emanuel y dos columnas que serian name y fecha(alias de init_date)
SELECT name, init_date 'fecha' FROM users WHERE name='emanuel'; -- En la mayoria de bases de datos se pueden omitir la paalabra clave AS e incluso se pueden dejar sin comillas 
SELECT name, init_date fecha FROM users WHERE name='emanuel'; -- Como se explica arriba

SELECT column_name FROM table_name AS alias_name; -- tambien se pude usar en tablas

-- CONCAT
SELECT CONCAT(name, surname) FROM users; -- Esto contatena dos o más columnas (osea que las une)
SELECT CONCAT(name, ' ',surname) FROM users; -- Las contatena con un espacio en medio
SELECT CONCAT('Nombre: ',name, '  Apellidos: ',surname) AS 'nombre completo' FROM users; --otro ejemplo de uso, se suele usar el AS para cambiar el nombre de esa columna
SELECT CONCAT('Nombre: ',name, '  Apellidos: ',surname) 'nombre completo' FROM users; --otro ejemplo de uso, o solo con las '' para cambiar el nombre de esa columna
SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address FROM Customers; --otro ejemplo de uso


-- It might seem useless to use aliases on tables, but when you are using more than one table in your queries, it can make the SQL statements shorter.

-- The following SQL statement selects all the orders from the customer with CustomerID=4 (Around the Horn). We use the "Customers" and "Orders" tables, and give them the table aliases of "c" and "o" respectively (Here we use aliases to make the SQL shorter):

SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;