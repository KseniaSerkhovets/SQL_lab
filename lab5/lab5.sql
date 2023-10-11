SELECT cities.region, SUM(cities.population) AS population 
FROM cities
GROUP BY cities.region

/////////////

SELECT cities.region, SUM(cities.population) AS population 
FROM cities
GROUP BY cities.region
HAVING COUNT(*) >= 10

/////////////

SELECT cities.name, cities.population
FROM cities
WHERE cities.region IN 

(
SELECT regions.uuid
FROM regions
WHERE regions.area_quantity >= 5
)

ORDER BY cities.population DESC
LIMIT 5 OFFSET 10

/////////////

SELECT cities.region, SUM(cities.population) AS population 
FROM cities
WHERE cities.population > 300000
GROUP BY cities.region

/////////////

SELECT cities.name, cities.population
FROM cities
WHERE (cities.population > 500000 OR cities.population < 150000) AND cities.region IN 

(
SELECT regions.uuid
FROM regions
WHERE regions.area_quantity <= 5
)
