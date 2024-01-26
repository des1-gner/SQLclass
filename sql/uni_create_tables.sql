drop table students cascade constraints;
drop table groups cascade constraints;
drop table lockers cascade constraints;
drop table courses cascade constraints;
drop table study cascade constraints;

CREATE TABLE groups (
  GroupID               VARCHAR2(4),
  Semester              VARCHAR2(4),
  Year                  NUMBER(4),
  PRIMARY KEY (GroupID));

CREATE TABLE students (
  StudentID          NUMBER(8),
  FirstName          VARCHAR2(20),
  LastName           VARCHAR2(20),
  Address            VARCHAR2(35),
  Suburb             VARCHAR2(20),
  PostCode           NUMBER(4),
  Phone              NUMBER(10),
  GroupID	         VARCHAR(4),
  PRIMARY KEY (StudentID),
  FOREIGN KEY (GroupID) 
  REFERENCES groups (GroupID));

CREATE TABLE courses (
  CourseCode            VARCHAR2(8),
  Title             	VARCHAR2(20),
  Points                NUMBER(2),
  Hours                 NUMBER(1),
  PRIMARY KEY (CourseCode));


CREATE TABLE lockers (
  LockerNo           NUMBER(4),
  Location           VARCHAR2(20),
  Floor              NUMBER(1),
  StudentID	     NUMBER(8),
  PRIMARY KEY (LockerNo),
  FOREIGN KEY (StudentID) 
  REFERENCES students (StudentID));


 CREATE TABLE study (
  StudentID          NUMBER(8),
  CourseCode         VARCHAR2(8),
  Grade     	     NUMBER(3),
  PRIMARY KEY (StudentID,CourseCode),
  FOREIGN KEY (StudentID) 
  REFERENCES students (StudentID),
  FOREIGN KEY (CourseCode) 
  REFERENCES courses (CourseCode));
 
 commit;
