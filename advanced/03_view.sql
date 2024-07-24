CREATE VIEW v_adult_users AS SELECT name, age FROM users where age >= 18; -- Para crear una vista
SELECT * FROM v_adult_users --para consultar la vista