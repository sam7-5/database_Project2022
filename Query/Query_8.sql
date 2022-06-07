select t.years_of_driving,t.date_of_birth,t.name,t.gender,t.license_expired_date 
from customers t
where exists(select b.license_plate from cars b
where exists(select o.orders_id from orders o where o.license_plate=b.license_plate
and o.customer_id=t.customer_id and o.extras='handicapped' and o.location LIKE '1%'))