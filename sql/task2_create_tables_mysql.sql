drop table if exists Doctors cascade;
drop table if exists Patients cascade;
drop table if exists Visits cascade;

create table Doctors (
	did numeric(3), 
	dname varchar(20), 
	speciality varchar(50), 
	fee numeric(6,2)
);

create table Patients (
	pid numeric(3), 
	pname varchar(20), 
	phone numeric(8)
);

create table Visits (
	pid numeric(3), 
	did numeric(3), 
	vdate date, 
	reason varchar(100)
);

commit;
