select Years_Of_Driving,count(*) as Years
from Customers
group by Years_Of_Driving
order by Years_Of_Driving
