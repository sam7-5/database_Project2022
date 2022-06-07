create or replace function numberManWithoutSecurity return number is
 FunctionResult number:=0;
  cursor menCust is
          select * from Dastraus.Customers t where t.gender='male';
  s1 menCust%rowtype;
begin
  open menCust;
  loop
    fetch menCust into s1;
    exit when menCust%notfound;
     if(s1.security_deposit=0) then FunctionResult:=FunctionResult+1;  dbms_output.put_line('name: '||s1.name||' years of driving:  '||s1.years_of_driving||' date of birth:  '||s1.date_of_birth||' license expired date:  '||s1.license_expired_date);
    end if;
    end loop;
  return(FunctionResult);
end numberManWithoutSecurity;