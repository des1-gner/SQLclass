/* To drop (delete) a table if it already exists.*/

DROP TABLE movie CASCADE CONSTRAINTS;
DROP TABLE classification CASCADE CONSTRAINTS;
DROP TABLE cast CASCADE CONSTRAINTS;
DROP TABLE direct CASCADE CONSTRAINTS;

CREATE TABLE movie(
    mvID     NUMBER(1),
    title    VARCHAR2(40),
    rating   VARCHAR2(2),
    rel_date DATE,
    length   NUMBER(3),
    studio   VARCHAR(20),
    PRIMARY KEY (mvID));

CREATE TABLE classification(
    mvID     NUMBER(1),
    genre    VARCHAR2(10),
    PRIMARY KEY (mvID, genre),
    FOREIGN KEY (mvID) REFERENCES Movie(mvID));

CREATE TABLE cast(
    mvID     NUMBER(1),
    actor    VARCHAR2(20),
    PRIMARY KEY (mvID, actor),
    FOREIGN KEY (mvID) REFERENCES Movie(mvID));

CREATE TABLE direct(
    mvID     NUMBER(1),
    director VARCHAR2(20),
    PRIMARY KEY (mvID, director),
    FOREIGN KEY (mvID) REFERENCES Movie(mvID));


/* The Movie relation 
 * In SQL*Plus the input format for date is 'DD/MON/YY'. e.g. '24/FEB/20'.*/

INSERT INTO Movie VALUES(1, 'Angels and Demons', 'M', '14/MAY/19', 138, 'Sony Pictures');
INSERT INTO Movie VALUES(2, 'Coco Avant Chanel', 'PG', '25/JAN/19', 108, 'Roadshow');
INSERT INTO Movie VALUES(3, 'Harry Potter and the Half-Blood Prince', 'M', '15/JUL/19', 153,'Roadshow');
INSERT INTO Movie VALUES(4, 'The Proposal', 'PG', '16/JUN/18', 107, 'Disney');
INSERT INTO Movie VALUES(5, 'Ice Age: Dawn of the Dinosaurs', 'PG', '01/JUL/18', 94, '20th Century Fox');


/* Classification(mvID, genre) */
INSERT INTO Classification VALUES(1, 'Drama');
INSERT INTO Classification VALUES(2, 'Drama');
INSERT INTO Classification VALUES(3, 'Drama');
INSERT INTO Classification VALUES(3, 'Action');
INSERT INTO Classification VALUES(3, 'Adventure');
INSERT INTO Classification VALUES(4, 'Comedy');
INSERT INTO Classification VALUES(5, 'Comedy');
INSERT INTO Classification VALUES(5, 'Animated');


/* Cast(mvID, actor)  */
INSERT INTO Cast VALUES(1, 'Tom Hanks');
INSERT INTO Cast VALUES(2, 'Audrey Tautou');
INSERT INTO Cast VALUES(2, 'Benolt Poelvoorde');
INSERT INTO Cast VALUES(2, 'Alessandro Nivola');
INSERT INTO Cast VALUES(2, 'Marie Gillain');
INSERT INTO Cast VALUES(3, 'Daniel Radcliffe');
INSERT INTO Cast VALUES(3, 'Emma Watson');
INSERT INTO Cast VALUES(3, 'Rupert Grint');
INSERT INTO Cast VALUES(4, 'Sandra Bullock');
INSERT INTO Cast VALUES(4, 'Ryan Reynolds');
INSERT INTO Cast VALUES(4, 'Malin Akerman');
INSERT INTO Cast VALUES(4, 'Mary Steenburgen');
INSERT INTO Cast VALUES(4, 'Betty White');
INSERT INTO Cast VALUES(5, 'John Leguizamo');
INSERT INTO Cast VALUES(5, 'Queen Latifah');
INSERT INTO Cast VALUES(5, 'Denis Leary');
INSERT INTO Cast VALUES(5, 'Ray Ramono');
INSERT INTO Cast VALUES(5, 'Chris Wedge');

/* Direct(mvID, director)*/
INSERT INTO Direct VALUES(1, 'Ron Howard');
INSERT INTO Direct VALUES(2, 'Anne Fontaine');
INSERT INTO Direct VALUES(3, 'David Yates');
INSERT INTO Direct VALUES(4, 'Anne Fletcher');
INSERT INTO Direct VALUES(5, 'Carlos Saldanha');
INSERT INTO Direct VALUES(5, 'Mike Thurmeier');

commit;
