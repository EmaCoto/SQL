-- disparadores = Son instrucciones que se ejecutan automáticamente cuando ocurren eventos en la tabla 
-- ejemplo: yo programo que si el cliente actualiza su gmail, el anterior se guardará en otra tabla de base de datos

CREATE TRIGGER tg_email   --Se crea el trigger con su nombre
BEFORE/AFTER   INSERT/UPDATE/ DELETE  -- Se espeficica si quiere que el trigger actúe antes o después y que sea cuanod inserte, actualice o elimine
ON users -- se pone la union con la tabla que quiere que se ejecute el trigger 
FOR EACH ROW --con esto hago que se ejecute eb todas las filas
BEGIN -- Dentro del BEGIN se pone la lógica que queremos que se ejecute
    IF OLD.email <> NEW.email THEN
		INSERT INTO email_history(user_id, email)
		VALUES (OLD.user_id, OLD.email);
    END IF;

END;

----------------------
DELIMITER |   
CREATE TRIGGER tg_email
AFTER UPDATE ON users 
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN
		INSERT INTO email_history(user_id, email)
		VALUES (OLD.user_id, OLD.email);
    END IF;
END;
|

DELIMITER ;
--------------------


DROP TRIGGER IF EXISTS tg_email; -- Para eliminar el trigger