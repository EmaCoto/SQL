CREATE TABLE dni (
	dni_id INT AUTO_INCREMENT PRIMARY KEY,
    dni_number INT NOT NULL,
    user_id INT,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

/*

Para hacer una relación de 1:1

° Primero hay que poner la llave primaria de la tabla que quiere relacionar.
° Luego, se pone esa llave primaria como la llave foranea en la nueva tabla y 
 se hace referencia a la tabla que quiere hacer la relación, 
 especificando cual es la llave primaria de esa tabla.

*/

ALTER TABLE users 
ADD CONSTRAINT fk_companies FOREIGN KEY(company_id) REFERENCES companies(company_id);
/*
Para hacer una relación de 1:N si la tablas ya estan creada
*/

CREATE TABLE users_languaje (
	user_languaje_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    languaje_id INT,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(languaje_id) REFERENCES languajes(languaje_id),
    UNIQUE (languaje_id, user_id)
);

/*
Para hacer una relación de N:N
Se tiene que crear una tabla intermedia
*/


