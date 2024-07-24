SELECT MAX(age) FROM users; -- Muestra el campo con mayor edad en la columna
SELECT MIN(age) FROM users; -- Muestra el campo con menor edad en la columna


SELECT product_name, price
FROM product
WHERE price = (SELECT MIN(price) FROM product); -- asi para hacer la consulta de agregación con el nombre