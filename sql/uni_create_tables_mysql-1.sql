drop table if exists students cascade;
drop table if exists groups cascade;
drop table if exists lockers cascade;
drop table if exists courses cascade;
drop table if exists study cascade;

CREATE TABLE groups (
  GroupID               varchar(4),
  Semester              varchar(4),
  Year                  numeric(4),
  PRIMARY KEY (GroupID));

CREATE TABLE students (
  StudentID          numeric(8),
  FirstName          varchar(20),
  LastName           varchar(20),
  Address            varchar(35),
  Suburb             varchar(20),
  PostCode           numeric(4),
  Phone              numeric(10),
  GroupID	         VARCHAR(4),
  PRIMARY KEY (StudentID),
  FOREIGN KEY (GroupID) REFERENCES groups (GroupID));

CREATE TABLE courses (
  CourseCode            varchar(8),
  Title             	varchar(20),
  Points                numeric(2),
  Hours                 numeric(1),
  PRIMARY KEY (CourseCode));


CREATE TABLE lockers (
  LockerNo           numeric(4),
  Location           varchar(20),
  Floor              numeric(1),
  StudentID	     numeric(8),
  PRIMARY KEY (LockerNo),
  FOREIGN KEY (StudentID) REFERENCES students (StudentID));


 CREATE TABLE study (
  StudentID          numeric(8),
  CourseCode         varchar(8),
  Grade     	     numeric(3),
  PRIMARY KEY (StudentID,CourseCode),
  FOREIGN KEY (StudentID) REFERENCES students (StudentID),
  FOREIGN KEY (CourseCode) REFERENCES courses (CourseCode));
 
 commit;
