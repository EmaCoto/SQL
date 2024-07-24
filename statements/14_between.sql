SELECT * FROM users WHERE age BETWEEN 20 AND 30; -- Me muestra todos los registros que en su age tengan entre 20 y 30 años
SELECT * FROM Products WHERE Price NOT BETWEEN 20 AND 30; -- Me muestra todos los registros que en su age NO tengan entre 20 y 30 años

SELECT * FROM Orders WHERE OrderDate BETWEEN #07/01/1996# AND #07/31/1996#; --Ejemplo para modificar el orden
SELECT * FROM Orders WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';