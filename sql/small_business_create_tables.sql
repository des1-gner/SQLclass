DROP TABLE departments CASCADE CONSTRAINTS;
DROP TABLE employees CASCADE CONSTRAINTS;
DROP TABLE projects CASCADE CONSTRAINTS;
DROP TABLE emp_works_on CASCADE CONSTRAINTS;
DROP TABLE dependents CASCADE CONSTRAINTS;

CREATE TABLE departments (
DNumber NUMBER(1),
DName VARCHAR2(30) NOT NULL,
Location VARCHAR2(20) NOT NULL,
PRIMARY KEY (DNumber));

CREATE TABLE employees (
EmpID       NUMBER(4),
FName      VARCHAR2(15) NOT NULL,
LName      VARCHAR2(15) NOT NULL,
BDate        DATE NOT NULL,
Address     VARCHAR2(30),
Suburb      VARCHAR2(20),
PostCode  NUMBER(4),
Salary       NUMBER(9,2),
DNumber  NUMBER(1),
PRIMARY KEY (EmpID), 
FOREIGN KEY (DNumber) 
REFERENCES departments (DNumber));

CREATE TABLE projects (
PNumber      NUMBER(2),
PName        VARCHAR2(15),
DNumber      NUMBER(1),
PRIMARY KEY (PNumber),
FOREIGN KEY (DNumber) 
REFERENCES departments (DNumber));

CREATE TABLE emp_works_on (
EmpID            NUMBER(4),
PNumber         NUMBER(2),
Hours           NUMBER(4,1),
PRIMARY KEY (EmpID, PNumber),
FOREIGN KEY (EmpID) 
REFERENCES employees (EmpID),
FOREIGN KEY (PNumber) 
REFERENCES projects (PNumber));

CREATE TABLE dependents (
DepID       NUMBER(2),
DepName     VARCHAR2(15)  NOT NULL,
DBDate      DATE NOT NULL,
Relationship VARCHAR2(15),
EmpID        NUMBER(4),
PRIMARY KEY (DepID),
FOREIGN KEY (EmpID) 
REFERENCES employees (EmpID));

commit;