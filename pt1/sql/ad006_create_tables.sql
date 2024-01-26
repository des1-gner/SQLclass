drop table ADteachers cascade constraints;
drop table ADgroups cascade constraints;
drop table ADcourses cascade constraints;
drop table ADstudents cascade constraints;
drop table teachers_courses cascade constraints;
drop table students_courses cascade constraints;

CREATE TABLE ADteachers (
  TeacherID             VARCHAR2(5),
  FirstName             VARCHAR2(20),
  PRIMARY KEY (TeacherID));
  

CREATE TABLE ADgroups (
  GroupID               VARCHAR2(4),
  Semester              VARCHAR2(4),
  Year                  NUMBER(4),
  TeacherID             VARCHAR2(5),
  PRIMARY KEY (GroupID),
  FOREIGN KEY (TeacherID) 
  REFERENCES ADteachers (TeacherID));
  
CREATE TABLE ADcourses (
  CourseCode            VARCHAR2(8),
  Title             	VARCHAR2(35),
  TeacherID             VARCHAR2(5),
  PRIMARY KEY (CourseCode),
  FOREIGN KEY (TeacherID) 
  REFERENCES ADteachers (TeacherID));

CREATE TABLE ADstudents (
  StudentID          NUMBER(8),
  FirstName          VARCHAR2(20),
  LastName           VARCHAR2(20),
  DOB                DATE,
  Email              VARCHAR2(35),
  Phone              VARCHAR2(10),
  GroupID	         VARCHAR(4),
  PRIMARY KEY (StudentID),
  FOREIGN KEY (GroupID) 
  REFERENCES ADgroups (GroupID));

CREATE TABLE teachers_courses (
  TeacherID          VARCHAR2(5),
  CourseCode         VARCHAR2(8),
  Hours              NUMBER(2),
  PRIMARY KEY (TeacherID,CourseCode),
  FOREIGN KEY (TeacherID) 
  REFERENCES ADteachers (TeacherID),
  FOREIGN KEY (CourseCode) 
  REFERENCES ADcourses (CourseCode)); 
 
 CREATE TABLE students_courses (
  StudentID          NUMBER(8),
  CourseCode         VARCHAR2(8),
  NumericalGrade     NUMBER(3),
  PRIMARY KEY (StudentID,CourseCode),
  FOREIGN KEY (StudentID) 
  REFERENCES ADstudents (StudentID),
  FOREIGN KEY (CourseCode) 
  REFERENCES ADcourses (CourseCode)); 
  
  commit;
