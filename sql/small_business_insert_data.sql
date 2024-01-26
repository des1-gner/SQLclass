INSERT INTO departments values (1,'Headquarters','Docklands');
INSERT INTO departments values (2,'Research','Branswick');
INSERT INTO departments values (3,'Production','Branswick');
INSERT INTO departments values (4,'Accounting and Finance','Carlton');
INSERT INTO departments values (5,'Human Resources Management','Carlton');

insert into employees values (1020, 'PETER', 'PAN', '10/JAN/82', '12 St Kilda Road', 'Albert Park', 3206, 93000.00, 1);
insert into employees values (1021, 'YING', 'WONG', '11/DEC/91', '7 Grass Walk', 'Middle Park', 3206, 81000.00, 1);
insert into employees values (2001, 'FRANK', 'WONG', '23/FEB/87', '7 Grass Walk', 'Middle Park', 3206, 84000.00, 2);
insert into employees values (2005, 'MARY', 'HIGGINS', '18/APR/83', '12 King Road', 'Elwood', 3184, 84000.00, 2);
insert into employees values (3010, 'JOHN', 'SMITH', '07/APR/75', '8 Preston Street', 'St Albans', 3021, 56000.00, 3);
insert into employees values (3020, 'JAMES', 'BORG', '10/JAN/82', '11 Castle Road', 'Kensington', 3031, 65000.00, 3);
insert into employees values (3030, 'ANASTASIYA', 'IVANOV', '15/MAY/82', '265 Stone Street', 'Taylors Hill', 3037, 60000.00, NULL);
insert into employees values (3031, 'ADITI', 'ANAND', '11/OCT/90', '125 Elizabeth Street', 'Melbourne', 3000, NULL, 3);
insert into employees values (4000, 'AHMAD', 'JABBAR', '01/AUG/79', '18 Taylors Road', 'Delahey', 3037, 73000.00, 4);
insert into employees values (5001, 'LINH', 'DUONG', '14/NOV/91', '25 Burnside Walk', 'Burnside', 3023, 68000.00, 5);

insert into projects values(10,'ProductA',3);
insert into projects values(11,'ProductB',3);
insert into projects values(12,'New DBMS',4);
insert into projects values(13,'Automatization',2);
insert into projects values(14,'Reorganization',1);

insert into emp_works_on values(1020,14,32.5);
insert into emp_works_on values(1021,14,38.0);
insert into emp_works_on values(3010,10,18.5);
insert into emp_works_on values(3010,11,10.0);
insert into emp_works_on values(3020,10,40.0);
insert into emp_works_on values(3030,10,11.5);
insert into emp_works_on values(3030,11,25.0);
insert into emp_works_on values(3031,11,42.0);
insert into emp_works_on values(4000,12,50.0);
insert into emp_works_on values(2001,13,40.0);
insert into emp_works_on values(2005,13,42.5);

insert into dependents values(1,'ALICE','28/JAN/17','DAUGHTER',1020);
insert into dependents values(2,'FREDDIE','28/JAN/17','SON',1020);
insert into dependents values(3,'HARRY','18/MAY/05','SON',1021);
insert into dependents values(4,'MIA','18/MAY/98','DAUGHTER',3010);
insert into dependents values(5,'MARIA','11/JUN/99','DAUGHTER',3010);
insert into dependents values(6,'PATRICK','27/JUL/03','SON',3010);
insert into dependents values(7,'KEN','09/OCT/06','SON',3010);
insert into dependents values(8,'DARPANA','12/NOV/18','DAUGHTER',3031);
insert into dependents values(9,'NISHA','02/FEB/93','SPOUSE',3031);
insert into dependents values(10,'AMINA','16/APR/97','DAUGHTER',4000);
insert into dependents values(11,'LATIF','18/DEC/01','SON',4000);
insert into dependents values(12,'DUC','11/SEP/02','SON',5001);
insert into dependents values(13,'HOA','10/OCT/04','DAUGHTER',5001);
insert into dependents values(14,'HUONG','16/NOV/06','DAUGHTER',5001);
insert into dependents values(15,'ANDREI','03/AUG/04','SON',3030);
insert into dependents values(16,'WENDY','28/JAN/85','SPOUSE',1020);

commit;