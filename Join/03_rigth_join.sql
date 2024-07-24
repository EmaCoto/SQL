-- En este caso se queda con la información de la tabla de la derecha

SELECT * FROM users 
RIGHT JOIN dni 
ON users.user_id = dni.user_id;

SELECT name, dni_number FROM users 
RIGHT JOIN dni 
ON users.user_id = dni.user_id;

SELECT users.name, languajes.languaje_name FROM users_languaje
RIGHT JOIN users ON users_languaje.user_id = users.user_id
RIGHT JOIN languajes ON users_languaje.languaje_id = languajes.languaje_id ORDER BY name;