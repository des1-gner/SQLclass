/* Practical Test 1 */
/* Name: Oisin Sol Emlyn Aeonn */
/* ID: s3952320 */

/* Q1 */
SELECT ADgroups.GroupID
FROM ADgroups
JOIN ADstudents ON ADgroups.GroupID = ADstudents.GroupID
WHERE ADstudents.FirstName = 'Frodo' AND ADstudents.LastName = 'Baggins';

/* Q2 */
SELECT ADteachers.TeacherID
FROM ADteachers
JOIN teachers_courses ON ADteachers.TeacherID = teachers_courses.TeacherID
WHERE teachers_courses.CourseCode = 'ISYS2390';

/* Q3 */
SELECT *
FROM ADstudents
WHERE Email NOT LIKE '%@%';

/* Q4 */
SELECT FirstName, Email, Phone
FROM ADstudents
WHERE GroupID IS NOT NULL;

/* Q5 */
SELECT AVG(NumericalGrade) AS AverageGrade
FROM students_courses
WHERE StudentID = 12345672;

/* Q6 */
SELECT StudentID, CourseCode
FROM students_courses
WHERE NumericalGrade IS NULL;

/* Q7 */
SELECT CourseCode, Title
FROM ADcourses
WHERE CourseCode LIKE '%COSC%';

/* Q8 */
SELECT CourseCode,
       MIN(NumericalGrade) AS LowestGrade,
       MAX(NumericalGrade) AS HighestGrade,
       ROUND(AVG(NumericalGrade), 2) AS AverageGrade
FROM students_courses
GROUP BY CourseCode;

/* Q9 */
SELECT COUNT(*) AS StudentsCompleted
FROM students_courses
WHERE CourseCode = 'COSC2385' AND NumericalGrade >= 50;

/* Q10 */
SELECT StudentID,
       ROUND(AVG(NumericalGrade)) AS AverageGrade
FROM students_courses
GROUP BY StudentID
HAVING AVG(NumericalGrade) >= 80;

/* Q11 */
SELECT TeacherID,
       SUM(Hours) AS TeachingHours
FROM teachers_courses
GROUP BY TeacherID
ORDER BY TeachingHours DESC, TeacherID ASC;

/* Q12 */
SELECT GroupID,
       COUNT(*) AS NumberOfStudents
FROM ADstudents
GROUP BY GroupID
HAVING COUNT(*) > 3;

/* Q13 */
SELECT COUNT(*) * 1000 AS "Fees Paid - Student 12345673"
FROM students_courses
WHERE StudentID = 12345673;

/* Doing both for fun. */

/* Q14 */
SELECT COUNT(DISTINCT TeacherID) AS "Number of Teachers",
       SUM(Hours) AS "Number of Hours"
FROM teachers_courses
WHERE CourseCode IN ('COSC2511', 'COSC2446', 'COSC2384', 'ISYS2390');

/* Q15 */
SELECT c.CourseCode AS "COURSECODE",
       COUNT(s.NumericalGrade) AS "Moderate Grades"
FROM students_courses s
JOIN ADcourses c
ON s.CourseCode = c.CourseCode
WHERE (c.CourseCode LIKE 'ISYS%' OR c.CourseCode LIKE 'COMM%')
  AND (s.NumericalGrade BETWEEN 50 AND 69)
GROUP BY c.CourseCode
HAVING COUNT(s.NumericalGrade) > 1
ORDER BY COUNT(s.NumericalGrade) ASC;
