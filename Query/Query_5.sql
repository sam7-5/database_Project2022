select Customer_ID, count(Customer_ID)
from Orders natural join customers 
group by Customer_ID
having count(Customer_ID)>2;