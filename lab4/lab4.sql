SELECT UPPER(name)
FROM cities
ORDER BY name ASC
LIMIT 5 OFFSET 5


SELECT name, LENGTH(name) AS len
FROM cities
WHERE LENGTH(name) < 8 or LENGTH(name) >10


SELECT SUM(population) AS CS_population
FROM cities
WHERE region = 'C' or region = 'S'


SELECT AVG(population) AS W_averange_population
FROM cities
WHERE region = 'W'


SELECT COUNT(*) AS E_cities_amount
FROM cities
WHERE region = 'E'