create or replace procedure genderBlklist(blk in number) is
women number:=0;
men number:=0;
total  number:=0;
begin
  select count(*) into women from DASTRAUS.CUSTOMERS t  where t.gender = 'female' and t.black_list=blk;
  select count(*) into men from DASTRAUS.CUSTOMERS t  where t.gender = 'male' and t.black_list=blk;
  select count(*) into total from DASTRAUS.CUSTOMERS t  ;
  
  if(women>men and blk=1)
   then dbms_output.put_line('the ratio of blacklisted women '|| women/total ||' is bigger than the one for men '||men/total);
        dbms_output.put_line('women are less trusted than man');
   else if(women<men and blk=1)
     then  dbms_output.put_line('the ratio of blacklisted women '|| women/total ||' is shorter than the one for men '||men/total);
             dbms_output.put_line('women are more trusted than man');
      else if(women>men and blk=0)
     then  dbms_output.put_line('the ratio of not blacklisted women '|| women/total ||' is shorter than the one for men '||men/total);
             dbms_output.put_line('women are more trusted than man');
      else if(women<men and blk=0)
     then  dbms_output.put_line('the ratio of not blacklisted women '|| women/total ||' is shorter than the one for men '||men/total);
        dbms_output.put_line('women are less trusted than man');
  end if;end if;end if;end if;
end genderBlklist;
