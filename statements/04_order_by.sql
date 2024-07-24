SELECT * FROM users ORDER BY age; -- Me ordena la columna que le especifiqué de menor a mayor
SELECT * FROM users ORDER BY age ASC; -- Me ordena la columna que le especifiqué de menor a mayor
SELECT * FROM users ORDER BY age DESC; -- Me ordena la columna que le especifiqué de mayor a menor
SELECT * FROM users ORDER BY name; -- Me ordena la columna que le especifiqué de la A a la Z
SELECT * FROM users  ORDER BY age DESC, name ASC; -- otro ejemplo de uso con dos columnas
SELECT * FROM users WHERE name='emanuel' ORDER BY age DESC; -- También se puede poner el WHERE y decir que lo ordene  w