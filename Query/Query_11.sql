select t.orders_id,sum(s.number_of_seats)
from DASTRAUS.CARS s,DASTRAUS.ORDERS t,DASTRAUS.CUSTOMERS u
where s.license_plate=t.license_plate and t.customer_id=u.customer_id
group by orders_id
intersect
(select  t.orders_id,1
from DASTRAUS.CARS s,DASTRAUS.ORDERS t
intersect
select distinct P.ORDERS_ID, 1
from DASTRAUS.ORDERS P)
intersect
(select  t.orders_id,1
from DASTRAUS.ORDERS t
where t.orders_id>19550)