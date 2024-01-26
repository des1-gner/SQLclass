drop table clients9 cascade constraints;
drop table items9 cascade constraints;

create table clients9 (
clientid number(5),
first varchar2(20),
last   varchar2(20),
city   varchar2(20),
primary key(clientid));

create table items9 (
itemid number(5),
order_date date,
description varchar2(30),
quantity number(3),
price number(8,2),
primary key(itemid));

commit;
