SELECT 
    *
FROM
    usuarios;

-- Consulta: crea 3 usuarios nuevos--
INSERT INTO usuarios (first_name, last_name,email)
VALUES ('carlota', 'contreras', 'carlota@gmail.cl');

INSERT INTO usuarios (first_name, last_name,email)
VALUES ('claudia', 'golines', 'claudia@gmail.cl');

INSERT INTO usuarios (first_name, last_name,email)
VALUES ('florinda', 'meza', 'florinda@gmail.cl');

-- Consulta: recupera todos los usuarios--
SELECT first_name, last_name FROM usuarios;

-- Consulta: recupera el primer usuario que usa su dirección de correo electrónico--
SELECT email FROM usuarios
WHERE id=1;

-- Consulta: recupera el último usuario que usa su id--
SELECT first_name,last_name	FROM usuarios
WHERE id=3;

-- Consulta: cambia el usuario con id=3 para que su apellido sea Panqueques--
UPDATE usuarios
SET last_name= 'Panqueques'
WHERE id=3;

-- Consulta: elimina el usuario con id=2 de la base de datos--
DELETE FROM usuarios 
WHERE id=2;

-- Consulta: obtén todos los usuarios, ordenados por su nombre--
SELECT * FROM usuarios
ORDER BY first_name;

-- Consulta BONUS: obtén todos los usuarios, ordenados por su nombre en orden descendente--
SELECT * FROM usuarios
ORDER BY first_name DESC;