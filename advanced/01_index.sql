-- Se ponen en las columnas que frecuentemente el cliente haga una busqueda y encontre más rapido ese registro (normalmente se hace esto cuando se va o ya se están almacenando muchos datos para optimizar la consulta)

CREATE INDEX idx_name ON USERS(name); -- esta es la forma en la que se crea un index a la columna
-- Le damos en nombre ak index y luego se hace una unión con la tabla y su campo

CREATE UNIQUE INDEX idx_name ON USERS(name); -- de esta forma hacemos que el index sea único

CREATE INDEX idx_name_surname ON USERS(name, surname); --de esta forma le damos index a dos o más columnas

DROP INDEX idx_name ON users; -- esta forma se borra el index de la columna y tabla