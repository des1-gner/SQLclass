insert into Doctors values(101,'David Jones','GP', 105.00);
insert into Doctors values(102,'Cilla Myer','GP', 95.00);
insert into Doctors values(103,'John Grisham','Dentist', 134.50);

insert into Patients values(11,'James Ho', 98765633);
insert into Patients values(12,'Mary Poppins', 95783456);
insert into Patients values(13,'Bruce Willis', 98437777);
insert into Patients values(14,'Willy Timmins', 98446677);
insert into Patients values(15,'Pierce Brosnan', 98412222);

insert into Visits values(11,101, '2021-5-01','Pneumonia');
insert into Visits values(12,102, '2021-5-03','Headache');
insert into Visits values(13,102, '2021-5-04','Allergy');
insert into Visits values(11,103, '2021-5-06','Toothache');
insert into Visits values(15,102, '2021-5-10','Stomach Ache');

commit;