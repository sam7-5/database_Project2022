(select t.CUSTOMER_ID,s.extra 
from DASTRAUS.CUSTOMERS t,(select P.CUSTOMER_ID,count(*) as extra  
                           from DASTRAUS.ORDERS P  
                           group by P.CUSTOMER_ID )s 
where exists (select * from DASTRAUS.ORDERS R where R.LICENSE_PLATE>100 and R.CUSTOMER_ID=t.customer_id) and s.extra>2 and s.CUSTOMER_ID=t.CUSTOMER_ID) 
 
minus 
 
(select t.CUSTOMER_ID,s.extra 
from DASTRAUS.CUSTOMERS t,(select P.CUSTOMER_ID,count(*) as extra  
                           from DASTRAUS.ORDERS P  
                           group by P.CUSTOMER_ID )s 
where t.date_of_birth>'01-OCT-1951' )