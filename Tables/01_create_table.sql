CREATE TABLE persons (
	id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(55),
    age int,
    email varchar(100),
    created date
); -- Crear tabla sin restricciones


CREATE TABLE persons2 (
	id int AUTO_INCREMENT PRIMARY KEY NOT NULL UNIQUE,
    name varchar(55),
    age int NULL,
    email varchar(100) UNIQUE,
    created datetime DEFAULT CURRENT_TIMESTAMP()
); -- Con restrincciones


CREATE TABLE persons3 (
	id int AUTO_INCREMENT NOT NULL,
    name varchar(55),
    age int NULL,
    email varchar(100),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY (id),
    UNIQUE (id)
); -- Otro ejemplo con restrincciones


CREATE TABLE persons4 (
	id int AUTO_INCREMENT NOT NULL,
    name varchar(55),
    age int NULL,
    email varchar(100),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY (id),
    UNIQUE (id),
    CHECK (age >= 18)
); --En este caso le adiccionamos el CHECK es un tipo de validación, con este le indico que no me deje registrar una persona que no sea mayor o igual de 20 años
