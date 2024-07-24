ALTER TABLE persons5
ADD surname varchar(150); -- En este caso se modifica la tabla agregándole una nueva columna

ALTER TABLE persons5
RENAME COLUMN surname TO description; -- Esto me modifica el nombre de una columna

ALTER TABLE persons5
MODIFY COLUMN description varchar(200); -- Esta forma lo que hace es que podemos modificar el tipo de dato de la columna

ALTER TABLE persons5
DROP COLUMN description; -- Este método lo que hace es que elimina la columna