select *
from Orders
where Customer_ID in (select Customer_ID
from customers
where Years_Of_Driving >= 10 );
