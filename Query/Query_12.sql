select t.customer_id,sum(u.years_of_driving)
from DASTRAUS.CARS s,DASTRAUS.ORDERS t,DASTRAUS.CUSTOMERS u
where s.license_plate=t.license_plate and t.customer_id=u.customer_id
group by t.customer_id

union
(select  t.customer_id,2
from DASTRAUS.CARS s,DASTRAUS.ORDERS t
intersect
select distinct P.customer_id, 2
from DASTRAUS.ORDERS P)
intersect
(select  t.customer_id,2
from DASTRAUS.ORDERS t
where t.orders_id>19960)