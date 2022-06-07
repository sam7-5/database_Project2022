select Date_Of_Orders
from Orders
where EXTRACT(MONTH FROM Date_Of_Orders) = &dob;