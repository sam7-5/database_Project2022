--VIEW
CREATE VIEW view_count_Customer_ID AS
select Customer_ID
from Orders
group by Customer_ID
having count(*) > 1;





--Q
select Customer_ID
from Orders
where Customer_ID in (select Customer_ID
                    from customers
                    where Black_List = 0 and Security_Deposit = 0 )
Intersect
select *
from view_count_Customer_ID;



--DROP VIEW view_count_Customer_ID;
