SELECT * FROM users WHERE NOT age=20; -- En este caso me traería todos los usuarios que en su campo age no tengan 20
SELECT * FROM users WHERE NOT age=20; -- En este caso me traería todos los usuarios que en su campo age no tengan 20
SELECT * FROM users WHERE NOT age=20 AND name='emanuel'; -- me va consultar todos los ususarios que su edad no sea de 20 y su nombre sea emanuel
SELECT * FROM users WHERE NOT age=20 AND NOT name='emanuel'; -- me va consultar todos los ususarios que su edad no sea de 20 y su nombre no sea emanuel
SELECT * FROM users WHERE NOT age=20 OR name='emanuel'; -- me va consultar todos los ususarios que su edad no sea de 20 o su nombre sea emanuel (se cumplee una condición o la otra)
SELECT * FROM users WHERE NOT age=20 OR NOT name='emanuel'; -- me va consultar todos los ususarios que su edad no sea de 20 o su nombre no sea emanuel (se cumplee una condición o la otra)

