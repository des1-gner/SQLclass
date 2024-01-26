DROP TABLE if exists departments CASCADE;
DROP TABLE if exists employees CASCADE;
DROP TABLE if exists projects CASCADE;
DROP TABLE if exists emp_works_on CASCADE;
DROP TABLE if exists dependents CASCADE;

CREATE TABLE departments (
DNumber numeric(1),
DName varchar(30) NOT NULL,
Location varchar(20) NOT NULL,
PRIMARY KEY (DNumber));

CREATE TABLE employees (
EmpID       numeric(4),
FName      varchar(15) NOT NULL,
LName      varchar(15) NOT NULL,
BDate        DATE NOT NULL,
Address     varchar(30),
Suburb      varchar(20),
PostCode  numeric(4),
Salary       numeric(9,2),
DNumber  numeric(1),
PRIMARY KEY (EmpID), 
FOREIGN KEY (DNumber) REFERENCES departments (DNumber));

CREATE TABLE projects (
PNumber      numeric(2),
PName        varchar(15),
DNumber      numeric(1),
PRIMARY KEY (PNumber),
FOREIGN KEY (DNumber) REFERENCES departments (DNumber));

CREATE TABLE emp_works_on (
EmpID            numeric(4),
PNumber         numeric(2),
Hours           numeric(4,1),
PRIMARY KEY (EmpID, PNumber),
FOREIGN KEY (EmpID) REFERENCES employees (EmpID),
FOREIGN KEY (PNumber) REFERENCES projects (PNumber));

CREATE TABLE dependents (
DepID       numeric(2),
DepName     varchar(15)  NOT NULL,
DBDate      DATE NOT NULL,
Relationship varchar(15),
EmpID        numeric(4),
PRIMARY KEY (DepID),
FOREIGN KEY (EmpID) REFERENCES employees (EmpID));

commit;