select name
from cities
where name like '%ськ'


select name
from cities
where name like '%донец%'


select concat(name, ' (', region, ')')
from cities
where population > 100000
order by name asc


select name, population/400000 as percentage_of_population
from cities
order by population desc
limit 10


select concat(name, ' - ', population/400000, '%')
from cities
where population/400000 > 0.1