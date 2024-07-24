-- IMPORTANTEEEEE SIEMPRE USAR EL WHERE. A NO SE DE QUE SE REQUIERA CAMBIAR TODOS LOS CAMPOS DE LA COLUMNA SIN EL WHERE

UPDATE users SET age = 21 WHERE user_id = 11; -- Actualiza de la tabla user el registro con el id 11 y le actualiza su campo age poniendole 21 
UPDATE users SET age = 21, init_date = '1996-07-01' WHERE user_id = 11; -- otro ejemplo pero ahora actulizando dos campos del usuario