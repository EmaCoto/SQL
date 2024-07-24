SELECT * FROM users WHERE email LIKE '%gmail.com'; -- Consulta en la tabla email todos los usuarios que tengan en su campo algo que termine en 'gmail.com'
SELECT * FROM users WHERE email LIKE '%@%'; --Otro ejemplo, solo traerá los que tienen '@'

SELECT * FROM Customers WHERE CustomerName LIKE 'a%' OR CustomerName LIKE 'b%'; --Tip: You can also combine any number of conditions using AND or OR operators.

SELECT * FROM Customers WHERE CustomerName LIKE 'b%s'; -- Tip: You can also combine "starts with" and "ends with"

SELECT * FROM Customers WHERE CustomerName LIKE '%or%'; --Return all customers that contains the phrase 'or'