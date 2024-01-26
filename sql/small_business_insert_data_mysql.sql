INSERT INTO departments values (1,'Headquarters','Docklands');
INSERT INTO departments values (2,'Research','Branswick');
INSERT INTO departments values (3,'Production','Branswick');
INSERT INTO departments values (4,'Accounting and Finance','Carlton');
INSERT INTO departments values (5,'Human Resources Management','Carlton');

insert into employees values (1020, 'PETER', 'PAN', '1982-1-10', '12 St Kilda Road', 'Albert Park', 3206, 93000.00, 1);
insert into employees values (1021, 'YING', 'WONG', '1991-12-11', '7 Grass Walk', 'Middle Park', 3206, 81000.00, 1);
insert into employees values (2001, 'FRANK', 'WONG', '1987-2-23	', '7 Grass Walk', 'Middle Park', 3206, 84000.00, 2);
insert into employees values (2005, 'MARY', 'HIGGINS', '1983-4-18', '12 King Road', 'Elwood', 3184, 84000.00, 2);
insert into employees values (3010, 'JOHN', 'SMITH', '1975-4-07', '8 Preston Street', 'St Albans', 3021, 56000.00, 3);
insert into employees values (3020, 'JAMES', 'BORG', '1982-1-10', '11 Castle Road', 'Kensington', 3031, 65000.00, 3);
insert into employees values (3030, 'ANASTASIYA', 'IVANOV', '1982-5-15', '265 Stone Street', 'Taylors Hill', 3037, 60000.00, NULL);
insert into employees values (3031, 'ADITI', 'ANAND', '1990-10-11', '125 Elizabeth Street', 'Melbourne', 3000, NULL, 3);
insert into employees values (4000, 'AHMAD', 'JABBAR', '1979-7-01', '18 Taylors Road', 'Delahey', 3037, 73000.00, 4);
insert into employees values (5001, 'LINH', 'DUONG', '1991-11-14', '25 Burnside Walk', 'Burnside', 3023, 68000.00, 5);

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

insert into dependents values(1,'ALICE','2017-1-28','DAUGHTER',1020);
insert into dependents values(2,'FREDDIE','2017-1-28','SON',1020);
insert into dependents values(3,'HARRY','2005-5-18','SON',1021);
insert into dependents values(4,'MIA','1998-5-18','DAUGHTER',3010);
insert into dependents values(5,'MARIA','1999-6-11','DAUGHTER',3010);
insert into dependents values(6,'PATRICK','2003-7-27','SON',3010);
insert into dependents values(7,'KEN','2006-10-09','SON',3010);
insert into dependents values(8,'DARPANA','2018-11-12','DAUGHTER',3031);
insert into dependents values(9,'NISHA','1993-2-02','SPOUSE',3031);
insert into dependents values(10,'AMINA','1997-4-16','DAUGHTER',4000);
insert into dependents values(11,'LATIF','2001-12-18','SON',4000);
insert into dependents values(12,'DUC','2002-9-11','SON',5001);
insert into dependents values(13,'HOA','2004-10-10','DAUGHTER',5001);
insert into dependents values(14,'HUONG','2006-11-16','DAUGHTER',5001);
insert into dependents values(15,'ANDREI','2004-8-03','SON',3030);
insert into dependents values(16,'WENDY','1985-1-28','SPOUSE',1020);

commit;