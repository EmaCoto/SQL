--case es lanzar una loquica concreta en función de una condición

SELECT *,
CASE 
	WHEN age > 17 THEN 'Es mayor de edad'
    ELSE 'Es menor de edad'
END AS agetext
FROM users;  -- En este caso le estoy diciendo que si en el campo de la columna age es mayor a ... entonces .... sino .... Fundamental ponerle el alias, esto creara una columna nueva duciendo quien es mayor y quien es menor

SELECT *,
CASE 
	WHEN age > 17 THEN true
    ELSE false
END AS 'Es mayor de edad?'
FROM users; --En este ejemplo es igual a diferencia que esta vez me pase valores buleanos, verdadero o falso

SELECT *,
CASE 
	WHEN age > 20 THEN 'Es mayor de edad'
	WHEN age = 20 THEN 'acaba de cumplir la mayoria de edad'
    ELSE 'Es menor de edad'
END AS agetext
FROM users; -- Otro ejemplo, en este caso con dos WHEN