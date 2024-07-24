-- Este JOIN siempre se queda con la información de la ta tabla de la izquierda y los datos en común, pero no se trae nada de los datos de la derecha

SELECT * FROM users 
LEFT JOIN dni 
ON users.user_id = dni.user_id; -- En este caso me va mostrar todos los usuarios tengan o no tengan su dni (o relacion) en la tabla dni (ya que la tabla users seria la tabla de la izquierda, osea la primera que se consulta)

SELECT name, dni_number FROM users 
LEFT JOIN dni 
ON users.user_id = dni.user_id; -- otro ejemplo solo llamando unos campos específicos


SELECT users.name, languajes.languaje_name FROM users_languaje
LEFT JOIN users ON users_languaje.user_id = users.user_id
LEFT JOIN languajes ON users_languaje.languaje_id = languajes.languaje_id ORDER BY name; -- Otro ejemplo pero en este caso de muchos a muchos