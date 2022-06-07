select Customer_ID
from Orders
group by Customer_ID
having count(*) > 1;
