-- Sirve para obtener los datos comunes de ambas tablas ya relacionadas

SELECT * FROM users 
INNER JOIN dni; --trae toda la información de ambas tablas de forma desordenanda y repitiendo datos 

SELECT * FROM users 
INNER JOIN dni 
ON users.user_id = dni.user_id; -- para traerlo de forma ordenada hay que hacer una unión de la tabla(users) y del campo(user_id) e igualarlo con la otra tabla(dni) y su campo de la FK(users_is)


SELECT * FROM users 
JOIN dni 
ON users.user_id = dni.user_id; -- es lo mismo de arriba pero sin el inner

SELECT name, dni_id FROM users 
INNER JOIN dni 
ON users.user_id = dni.user_id
ORDER BY age DESC; -- otro ejemplo de uso

SELECT companies.name, users.name FROM users
JOIN companies
ON users.user_id = companies.company_id; --otro ejemplo ordenando las columnas cuando en ambas tienen el mismo nombre


-- Para hacer una relacion de muchos a muchos
SELECT * FROM users_languaje
JOIN users ON users_languaje.user_id = users.user_id
JOIN languajes ON users_languaje.languaje_id = languajes.languaje_id ORDER BY name; -- En este caso de hace una unión de ambas tablas con la tabla intermedia


SELECT users.name, languajes.languaje_name FROM users_languaje
JOIN users ON users_languaje.user_id = users.user_id
JOIN languajes ON users_languaje.languaje_id = languajes.languaje_id ORDER BY name; -- El mismo ejemplo pero esta vez llamando solo los campos específicos