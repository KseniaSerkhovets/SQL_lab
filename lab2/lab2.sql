select name
from cities
where population >= 1000000


select name
from cities
where region = 'E' or region = 'W'
order by population asc


select name
from cities
where region in ('S', 'C', 'N') and population > 50000


select name
from cities
where region in ('E', 'W', 'N') and population > 150000 and population < 350000
limit 20


select name
from cities
where region != 'E' and region != 'W'
order by population asc
limit 10 offset 10