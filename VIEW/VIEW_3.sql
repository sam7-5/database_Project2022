--VIEW
CREATE VIEW view_Booster AS
select *
from Orders
where Extras = 'Booster';



--Q
select *
from Orders
where Customer_ID in (select Customer_ID
                    from customers
                    where Black_List = 0 and Security_Deposit = 0 )
Intersect
select *
from view_Booster;



--DROP VIEW view_Booster;
