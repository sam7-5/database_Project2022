create or replace procedure cancelHandicaped(extra in varchar) is
x number:=0;
y number:=0;

cursor orders is
       select * from DASTRAUS.ORDERS t where t.extras=extra;
s1 orders%rowtype;
begin
  select count(*) into y from DASTRAUS.ORDERS t where t.canceled=1 and t.extras!=extra;
  open orders;
  loop
    fetch orders into s1;
    exit when orders%notfound;
    if(s1.canceled=1) then x:=x+1; end if;
  end loop;
  close orders;
if(x>y) then dbms_output.put_line('number of cancellation from '||extra||' is bigger than other extras');
dbms_output.put_line(extra||' are much likely to cancel');
else dbms_output.put_line(extra||' are not particulartly likely to cancel');
 end if;
end cancelHandicaped;
