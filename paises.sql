-- ¿Qué consulta ejecutarías para obtener todos los países que hablan esloveno? 
-- nombre del país, el idioma y el porcentaje de habla del idioma --
-- Tu consulta debe ordenar el resultado por porcentaje de habla del idioma en orden descendente. (1)--
SELECT 
    c.Name, l.language, l.percentage
FROM
    countries AS c
        JOIN
    languages AS l ON c.id = l.country_id
WHERE
    language = 'slovene'
ORDER BY l.percentage DESC;

-- ¿Qué consulta ejecutarías para mostrar el número total de ciudades de cada país? --
-- el nombre del país, el idioma y el número total de ciudades. 
-- Tu consulta debe ordenar el resultado por el número de ciudades en orden descendente --
SELECT  c.Name, count(1) as ciudades
FROM countries as c
JOIN cities as ci
on c.id= ci.country_id
group by c.id
ORDER BY ciudades desc;

--  ¿Qué consulta ejecutarías para obtener todos ciudades de México con una población mayor a 500,000? 
-- Tu consulta debe ordenar el resultado por población en orden descendente. (1)
SELECT  ci.Name, ci.population
FROM countries as c
JOIN cities as ci
on c.id= ci.country_id
WHERE c.name = 'Mexico' AND ci.population > 500000
ORDER BY ci.population desc;

-- ¿Qué consulta ejecutarías para obtener todos los idiomas en cada país con un porcentaje de habla mayor a 89%?
--  Tu consulta debe ordenar el resultado por porcentaje de habla en orden descendente.

SELECT  c.Name, l.language, l.percentage
FROM countries as c
JOIN languages as l
on c.id = l.country_id
WHERE l.percentage > 89
order by l.percentage desc;

-- 5. ¿Qué consulta ejecutarías para obtener todos los países con 
-- un área de superficie menor a 501 y población mayor a 100,000? 
SELECT c.name, c.surface_area, c.population
FROM countries as c 
WHERE  c.surface_area < 501 AND  c.population > 100000;

-- ¿Qué consulta ejecutarías para obtener países solo con monarquía constitucional,
--  un capital superior a 200 y una esperanza de vida mayor a 75 años?
SELECT c.name, government_form, capital, life_expectancy
FROM countries as c 
WHERE  government_form = 'Constitutional Monarchy' AND  capital > 200 AND life_expectancy > 75;

-- ¿Qué consulta ejecutarías para obtener 
-- todas las ciudades de Argentina dentro del distrito de Buenos Aires 
-- con una población mayor a 500,000 habitantes? 
-- La consulta debe devolver el nombre del país, el nombre de la ciudad, el distrito y la población. 
SELECT  c.name, ci.Name, ci.district, ci.population
FROM countries as c
JOIN cities as ci
on c.id= ci.country_id
WHERE c.name = 'Argentina' AND  ci.district = 'Buenos Aires' AND ci.population > 500000;

-- ¿Qué consulta ejecutarías para resumir el número de países en cada región? 
-- Tu consulta debe mostrar el nombre de la región y el número de países. 
-- Además, debe ordenar el resultado por el número de países en orden descendente. (2)

SELECT 
    region, COUNT(1)
FROM
    countries
GROUP BY region
ORDER BY COUNT(1) DESC;