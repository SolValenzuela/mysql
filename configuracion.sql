SELECT * FROM usuarios; 

-- algunos ejemplos de select--
SELECT last_name From usuarios; -- selecciona la columna last_name y sus registros--
SELECT first_name, last_name From usuarios; -- selecciona la columna first_name y last_name con sus registros--
SELECT first_name From usuarios  -- selecciona la columna first_name y sus registros correspondiente al id 3--
WHERE id=3;

SET sql_safe_updates = 0;

UPDATE usuarios 
SET first_name= 'lukitas'; -- al omitir WHERE se cambian todos los registros de la columna first_name--

UPDATE usuarios
SET first_name= 'margarita'
WHERE id=1;  -- al incluir WHERE solo se cambiara lo que la condicion indique,en este caso solo cambia el id 1--

UPDATE usuarios
SET first_name= 'patito'
WHERE id=2; 

DELETE FROM usuarios 
WHERE
    first_name = 'margarita';










