--VIEW
CREATE VIEW view_Years_Of_Driving AS
select *
from Orders
where Customer_ID in (select Customer_ID
from customers
where Years_Of_Driving >= 10 );


--Q
select *
from Orders
where Customer_ID in (select Customer_ID
                    from customers
                    where Black_List = 0 and Security_Deposit = 0 )
Intersect
select *
from view_Years_Of_Driving;



--DROP VIEW view_Years_Of_Driving;
