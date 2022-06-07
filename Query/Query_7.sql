select t.years_of_driving, t.date_of_birth, t.name, t.gender, t.license_expired_date 
from customers t
where not exists
select b.license_plate from cars b where exists(
select o.orders_id from orders orders
where o.license_plate=b.license_plate and o.customer_id=t.customer_id)