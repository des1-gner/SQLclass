drop table Doctors cascade constraints;
drop table Patients cascade constraints;
drop table Visits cascade constraints;

create table Doctors (
did number(3), 
dname varchar2(20), 
speciality varchar2(50), 
fee number(6,2));

create table Patients (
pid number(3), 
pname varchar2(20), 
phone number(8));

create table Visits (
pid number(3), 
did number(3), 
vdate date, 
reason varchar2(100));

commit;
