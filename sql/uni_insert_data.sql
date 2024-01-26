insert into groups values ('F19','Sem1', 2019);
insert into groups values ('J19','Sem2', 2019);
insert into groups values ('F20','Sem1', 2020);
insert into groups values ('F17','Sem1', 2017);

insert into courses values ('ISYS2390', 'Database Concepts', 12, 5);
insert into courses values ('COSC2511', 'Intro to Programming', 12, 5);
insert into courses values ('COSC2385', 'Networking 1', 12, 5);
insert into courses values ('COSC2446', 'Web Programming', 12, 5);

insert into students values (12344,'Peter', 'Pan', '3 Kensington Walk', 'Neverland', 3011, 99242398, 'F19');
insert into students values (12345,'Harry', 'Potter', '4 Privet Drive', 'Surrey', 3072, 93783409, 'F19');
insert into students values (12346,'Frodo', 'Baggins', '100 Bagshot Row', 'Hobbiton', 3006, 89341765, 'J19');
insert into students values (12347,'Bilbo', 'Baggins', '100 Bagshot Row', 'Hobbiton', 3006, 89341765, 'J19');
insert into students values (12348,'Ginny', 'Weasley', '8 Victoria Street', 'Melbourne', 3000, 99242398, 'F20');
insert into students values (12349,'Arwen', 'Pan', '18 Sydney Road', 'Brunswick', 3056, 92376982, 'F20');

insert into lockers values (18, 'Building 51', 6, 12344);
insert into lockers values (101, 'Building 56', 4, 12345);
insert into lockers values (100, 'Building 56', 6, null);
insert into lockers values (17, 'Building 51', 8, 12349);

insert into study values (12344, 'ISYS2390', 50);
insert into study values (12344, 'COSC2511', 35);
insert into study values (12345, 'COSC2385', 87);
insert into study values (12345, 'COSC2446', null);
insert into study values (12346, 'COSC2511', 25);
insert into study values (12346, 'ISYS2390', 67);
insert into study values (12347, 'COSC2511', 76);
insert into study values (12347, 'ISYS2390', null);
insert into study values (12347, 'COSC2385', 89);
insert into study values (12348, 'COSC2446', 95);
insert into study values (12348, 'ISYS2390', 56);

commit;
