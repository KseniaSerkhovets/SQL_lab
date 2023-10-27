SELECT cities.name AS city_name, regions.name AS region_name
FROM cities, regions
WHERE cities.population > 350000 AND regions.uuid = cities.region

/////////////

SELECT cities.name AS nord_sities
FROM cities, regions
WHERE regions.name = 'Nord' AND cities.region = regions.uuid
