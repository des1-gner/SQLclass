INSERT INTO ADteachers values ('EMP1', 'George');
INSERT INTO ADteachers values ('EMP2', 'Anar');
INSERT INTO ADteachers values ('EMP3', 'Dalija');
INSERT INTO ADteachers values ('EMP4', 'Rudy');
INSERT INTO ADteachers values ('EMP5', 'Tanya');
INSERT INTO ADteachers values ('EMP6', 'Hash');
INSERT INTO ADteachers values ('EMP7', 'Kanchan');
INSERT INTO ADteachers values ('EMP8', 'Leo');
INSERT INTO ADteachers values ('EMP9', 'Mark');
INSERT INTO ADteachers values ('EMP10', 'Trevor');
INSERT INTO ADteachers values ('EMP11', 'Alex');
INSERT INTO ADteachers values ('EMP12', 'Geetu');


INSERT INTO ADgroups values('F20', 'Sem1', 2020, 'EMP2');
INSERT INTO ADgroups values('J20', 'Sem2', 2020, 'EMP5');
INSERT INTO ADgroups values('F21', 'Sem1', 2021, 'EMP10');
INSERT INTO ADgroups values('J21', 'Sem2', 2021, 'EMP9');


INSERT INTO ADcourses values('ISYS3356', 'User-Centred Design', 'EMP7');
INSERT INTO ADcourses values('COSC2446', 'Web Programming', 'EMP7');
INSERT INTO ADcourses values('COSC2385', 'Networking 1', 'EMP2');
INSERT INTO ADcourses values('COSC2510', 'Intro to CS and PT', 'EMP3');
INSERT INTO ADcourses values('COMM2326', 'Workplace Communication', 'EMP6');
INSERT INTO ADcourses values('COSC2511', 'Intro to Programming', 'EMP10');
INSERT INTO ADcourses values('ISYS2390', 'Database Concepts', 'EMP3');
INSERT INTO ADcourses values('COSC2384', 'Networking 2', 'EMP9');


INSERT INTO ADstudents values(12345672, 
'Dan','Follett','2001-8-10','dan.follett@rmit.edu.au','0424961276', 'F20');
INSERT INTO ADstudents values(12345671, 
'Mary','Higgins','2001-3-15','mary.higgins@rmit.edu.au','0427777888', 'F20');
INSERT INTO ADstudents values(12345678, 
'Ann','Grisham','2002-10-01','ann.grisham@rmit.edu.au','0427898786','F20');
INSERT INTO ADstudents values(12345676, 
'Sidney','Tolkien','2001-2-17','sidney.tolkien@rmit.edu.au','0429999111', 'J20');
INSERT INTO ADstudents values(12345675, 
'Eragon','Paolini','1998-8-14','eragon.paolini.rmit.edu.au','0422134987', 'J20');
INSERT INTO ADstudents values(12345674, 
'Frodo','Baggins','2002-5-08','frodo.baggins@rmit.edu.au','0422938475', 'J20');
INSERT INTO ADstudents values(12345673, 
'Bilbo','Baggins','1997-12-18','bilbo.baggins@rmit.edu.au','0421345678', 'J20');
INSERT INTO ADstudents values(13345679, 
'Liang','Guanqiao','2003-1-15','liang.guanqiao@rmit.edu.au','0426132823', 'F21');
INSERT INTO ADstudents values(13875665, 
'Harry','Thanh','2002-2-07','harry.thanh@rmit.edu.au','0432131234', 'F21');
INSERT INTO ADstudents values(13875789, 
'Mia','Sheldon','1995-11-28','mia.sheldon@rmit.edu.au','0432131234', 'F21');
INSERT INTO ADstudents values(12345677, 
'Ron','Weasley','1998-8-11','ron.weasley@rmit.edu.au','0421111999', 'F21');
INSERT INTO ADstudents values(13345655, 
'Chelsea','Jin','2003-10-09','chelsea.jin@rmit.edu.au','0421112123', 'J21');
INSERT INTO ADstudents values(13312912, 
'Ahmad','Jabbar','2002-8-29','ahmad.jabbar@rmit.edu.au','0421111515', 'J21');
INSERT INTO ADstudents values(13312899,
'Robert','Fulghum', '2001-10-14','robert.fulghum@rmit.edu.au','0428762311', null);
INSERT INTO ADstudents values(13312811,
'Aditi','Anand', '1999-6-02','aditi.anand@rmit.edu.au','0428762376', 'J21');


INSERT INTO teachers_courses values('EMP2', 'COSC2385', 10);
INSERT INTO teachers_courses values('EMP2', 'COSC2384', 8);
INSERT INTO teachers_courses values('EMP3', 'COSC2510', 12);
INSERT INTO teachers_courses values('EMP3', 'ISYS2390', 5);
INSERT INTO teachers_courses values('EMP4', 'COSC2385', 4);
INSERT INTO teachers_courses values('EMP5', 'ISYS2390', 8);
INSERT INTO teachers_courses values('EMP10', 'ISYS2390', 4);
INSERT INTO teachers_courses values('EMP4', 'COSC2384', 6);
INSERT INTO teachers_courses values('EMP5', 'COSC2446', 12);
INSERT INTO teachers_courses values('EMP11', 'COSC2510', 8);
INSERT INTO teachers_courses values('EMP1', 'COSC2511', 6);
INSERT INTO teachers_courses values('EMP6', 'ISYS2390', 8);
INSERT INTO teachers_courses values('EMP6', 'COMM2326', 9);
INSERT INTO teachers_courses values('EMP7', 'ISYS3356', 8);
INSERT INTO teachers_courses values('EMP7', 'COSC2446', 10);
INSERT INTO teachers_courses values('EMP8', 'COSC2384', 10);
INSERT INTO teachers_courses values('EMP9', 'COSC2384', 7);
INSERT INTO teachers_courses values('EMP10', 'COSC2511', 10);


INSERT INTO students_courses values(12345672, 'ISYS3356', 67);
INSERT INTO students_courses values(12345671, 'ISYS3356', 37);
INSERT INTO students_courses values(12345678, 'ISYS3356', 92);
INSERT INTO students_courses values(12345672, 'COSC2446', 54);
INSERT INTO students_courses values(12345671, 'COSC2446', 65);
INSERT INTO students_courses values(12345678, 'COSC2446', 80);
INSERT INTO students_courses values(12345672, 'COSC2385', 76);
INSERT INTO students_courses values(12345671, 'COSC2385', NULL);
INSERT INTO students_courses values(12345678, 'COSC2385', 91);
INSERT INTO students_courses values(12345672, 'COSC2384', 67);
INSERT INTO students_courses values(12345671, 'COSC2384', 76);
INSERT INTO students_courses values(12345678, 'COSC2384', 82);
INSERT INTO students_courses values(12345672, 'COMM2326', 77);
INSERT INTO students_courses values(12345671, 'COMM2326', 56);
INSERT INTO students_courses values(12345678, 'COMM2326', 89);
INSERT INTO students_courses values(12345672, 'COSC2511', 64);
INSERT INTO students_courses values(12345671, 'COSC2511', 75);
INSERT INTO students_courses values(12345678, 'COSC2511', 70);
INSERT INTO students_courses values(12345672, 'ISYS2390', 57);
INSERT INTO students_courses values(12345671, 'ISYS2390', 67);
INSERT INTO students_courses values(12345678, 'ISYS2390', 97);
INSERT INTO students_courses values(12345672, 'COSC2510', 92);
INSERT INTO students_courses values(12345671, 'COSC2510', 73);
INSERT INTO students_courses values(12345678, 'COSC2510', 98);
INSERT INTO students_courses values(12345676, 'COSC2385', 98);
INSERT INTO students_courses values(12345675, 'COSC2385', 90);
INSERT INTO students_courses values(12345674, 'COSC2385', 67);
INSERT INTO students_courses values(12345676, 'COSC2384', 34);
INSERT INTO students_courses values(12345675, 'COSC2384', 81);
INSERT INTO students_courses values(12345674, 'COSC2384', 57);
INSERT INTO students_courses values(12345673, 'COSC2384', 89);
INSERT INTO students_courses values(12345676, 'COMM2326', 88);
INSERT INTO students_courses values(12345675, 'COMM2326', 73);
INSERT INTO students_courses values(12345674, 'COMM2326', NULL);
INSERT INTO students_courses values(12345673, 'COMM2326', 78);
INSERT INTO students_courses values(12345676, 'COSC2511', 64);
INSERT INTO students_courses values(12345675, 'COSC2511', 71);
INSERT INTO students_courses values(12345674, 'COSC2511', 62);
INSERT INTO students_courses values(12345673, 'COSC2511', 63);
INSERT INTO students_courses values(12345676, 'ISYS2390', 56);
INSERT INTO students_courses values(12345675, 'ISYS2390', 78);
INSERT INTO students_courses values(12345674, 'ISYS2390', 68);
INSERT INTO students_courses values(12345673, 'ISYS2390', 100);
INSERT INTO students_courses values(12345676, 'COSC2510', 43);
INSERT INTO students_courses values(12345675, 'COSC2510', 78);
INSERT INTO students_courses values(12345674, 'COSC2510', 64);
INSERT INTO students_courses values(12345673, 'COSC2510', 86);
INSERT INTO students_courses values(13345679, 'COMM2326', 67);
INSERT INTO students_courses values(13875665, 'COMM2326', 72);
INSERT INTO students_courses values(13875789, 'COMM2326', NULL);
INSERT INTO students_courses values(13345679, 'COSC2511', 84);
INSERT INTO students_courses values(13875665, 'COSC2511', 61);
INSERT INTO students_courses values(13875789, 'COSC2511', 72);
INSERT INTO students_courses values(13345679, 'ISYS2390', 66);
INSERT INTO students_courses values(13875665, 'ISYS2390', 88);
INSERT INTO students_courses values(13875789, 'ISYS2390', 58);
INSERT INTO students_courses values(13345679, 'COSC2510', 53);
INSERT INTO students_courses values(13875665, 'COSC2510', 88);
INSERT INTO students_courses values(13875789, 'COSC2510', 74);

COMMIT;
