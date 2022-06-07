-- Create table
create table CARS
(
  license_plate      NUMBER(20) not null,
  car_model          VARCHAR2(10) not null,
  manufacturing_date DATE,
  active             NUMBER(1) not null,
  number_of_seats    NUMBER(2) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table CARS
  add primary key (LICENSE_PLATE)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Grant/Revoke object privileges 
grant select, insert, update, delete, references, alter, index, debug, read on CARS to VERSE;




-- Grant/Revoke object privileges 
grant select, insert, update, delete, references, alter, index, debug, read on CUSTOMERS to VERSE;

-- Grant/Revoke object privileges 
grant select, insert, update, delete, references, alter, index, debug, read on ORDERS to verse;
