
-- Esto sirve como para agrerar a favoritos una tabla
DELIMITER |
CREATE PROCEDURE p_all_users()
BEGIN
	SELECT * FROM users;
END
|

DELIMITER ;  -- Para crear uno

CALL p_all_users;  -- Para llamar esa tabla


-- A esto tambien se le puede agregar parametros como where...

DROP PROCEDURE p_all_users; -- para eliminarlo