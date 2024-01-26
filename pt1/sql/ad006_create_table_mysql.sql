drop table if exists ADteachers;
drop table if exists ADgroups;
drop table if exists ADcourses;
drop table if exists ADstudents;
drop table if exists teachers_courses;
drop table if exists students_courses;


CREATE TABLE ADteachers (
  TeacherID             VARCHAR(5),
  FirstName             VARCHAR(20),
  PRIMARY KEY (TeacherID));


  
CREATE TABLE ADgroups (
  GroupID               VARCHAR(4),
  Semester              VARCHAR(4),
  Year                  NUMERIC(4),
  TeacherID             VARCHAR(5),
  PRIMARY KEY (GroupID),
  FOREIGN KEY (TeacherID) 
  REFERENCES ADteachers (TeacherID));


  
CREATE TABLE ADcourses (
  CourseCode            VARCHAR(8),
  Title              VARCHAR(35),
  TeacherID             VARCHAR(5),
  PRIMARY KEY (CourseCode),
  FOREIGN KEY (TeacherID) 
  REFERENCES ADteachers (TeacherID));


CREATE TABLE ADstudents (
  StudentID          NUMERIC(8),
  FirstName          VARCHAR(20),
  LastName           VARCHAR(20),
  DOB                DATE,
  Email              VARCHAR(35),
  Phone              VARCHAR(10),
  GroupID          VARCHAR(4),
  PRIMARY KEY (StudentID),
  FOREIGN KEY (GroupID) 
  REFERENCES ADgroups (GroupID));


CREATE TABLE teachers_courses (
  TeacherID          VARCHAR(5),
  CourseCode         VARCHAR(8),
  Hours              NUMERIC(2),
  PRIMARY KEY (TeacherID,CourseCode),
  FOREIGN KEY (TeacherID) 
  REFERENCES ADteachers (TeacherID),
  FOREIGN KEY (CourseCode) 
  REFERENCES ADcourses (CourseCode));

 
 CREATE TABLE students_courses (
  StudentID          NUMERIC(8),
  CourseCode         VARCHAR(8),
  NumericalGrade     NUMERIC(3),
  PRIMARY KEY (StudentID,CourseCode),
  FOREIGN KEY (StudentID) 
  REFERENCES ADstudents (StudentID),
  FOREIGN KEY (CourseCode) 
  REFERENCES ADcourses (CourseCode)); 
  
commit;