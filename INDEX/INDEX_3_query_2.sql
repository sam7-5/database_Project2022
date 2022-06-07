select Date_Of_Orders
from Orders
where  Date_Of_Orders = TO_DATE('&dob','YYYY/MM/DD');