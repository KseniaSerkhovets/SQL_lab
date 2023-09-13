select name
from cities
order by population asc 
limit 10 offset 10;


select name
from cities
order by name desc
limit 30


select name
from cities
order by region asc, population asc


select distinct region
from cities


select name
from cities
order by region desc, name desc