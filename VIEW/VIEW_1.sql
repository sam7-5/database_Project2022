--VIEW
CREATE VIEW view_Active AS
select *
from Orders
where license_plate in (select license_plate 
                    from cars
                    where Active = 1);

--Q
select *
from Orders
where Customer_ID in (select Customer_ID
                    from customers
                    where Black_List = 0 and Security_Deposit = 0 )
Intersect
select *
from view_Active;



--DROP VIEW view_Active;
