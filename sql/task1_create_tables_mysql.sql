drop table if exists clients9 cascade;
drop table if exists items9 cascade	;

create table clients9 (
	clientid numeric(5),
	first varchar(20),
	last   varchar(20),
	city   varchar(20),
	primary key(clientid)
);

create table items9 (
	itemid numeric(5),
	order_date date,
	description varchar(30),
	quantity numeric(3),
	price numeric(8,2),
	primary key(itemid)
);

commit;
