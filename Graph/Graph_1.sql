select Number_of_seats,count(*) as Number_of_seats
from cars
group by Number_of_seats
