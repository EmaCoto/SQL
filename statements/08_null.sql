SELECT * FROM users WHERE email IS NULL; -- Consulta que en la tabla me muestre los campos nulos de la columna email
SELECT * FROM users WHERE email IS NOT NULL; -- Consulta que en la tabla me muestre los campos que no esten nulos (que tengan contenido) de la columna email, osea todos los que tengan email son los que me va a mostrar

SELECT * FROM users WHERE email IS NOT NULL AND age=20; --otros ejemplos de uso 

SELECT name, surname, IFNULL(age, 0) AS age FROM users; -- Lo que hace es que en los campos de la columna age que sean nulos me les ponga 0