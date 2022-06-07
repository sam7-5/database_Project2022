create or replace function activeCar8seats return number is
  FunctionResult number:=0;
  cursor activeCars is
          select * from Dastraus.Cars t where t.active=1;
  s1 activeCars%rowtype;
begin
  open activeCars;
  loop
    fetch activeCars into s1;
    exit when activeCars%notfound;
    if(s1.number_of_seats=8) then FunctionResult:=FunctionResult+1; dbms_output.put_line('license plate: '||s1.license_plate||' car model:  '||s1.car_model||' manufacturing date:  '||s1.manufacturing_date); end if;
    end loop;
  return(FunctionResult);
end activeCar8seats;