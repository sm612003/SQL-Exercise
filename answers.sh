1.Get all the names of students in the database
select Name from students

2.Get all the data of students above 30 years old
select * from students WHERE Age>30

3.Get the names of the females who are 30 years old
SELECT  name FROM students WHERE Gender='F' AND Age=30

4.Get the number of Points of Alex
SELECT  Points FROM students WHERE name='Alex'

5.Add yourself as a new student

INSERT INTO students (name, Age, Gender, Points)
VALUES ('souhad', 20, 'F', 100);

6.Increase the points of Basma because she solved a new exercise

UPDATE students
SET Points = 400
WHERE name='Basma'

7.

UPDATE students
SET Points = 100
WHERE name='Alex'

10.Copy Layal's data from students to graduates

 CREATE TABLE graduates
 AS SELECT
 *
 FROM students
 WHERE name='Layal'
 
 11.Add the graduation date previously mentioned to Layal's record in graduates

 ALTER TABLE graduates
 ADD Graduation date ;
 INSERT INTO graduates (Graduation) VALUES ('08-09-2018');

 12.Remove Layal's record from students

 DELETE FROM students WHERE name='Layal';
 
 14.Produce a table that contains, for each employee, his/her name, company name, and company date.

 SELECT companies.name, companies.Date, employees.Name
 FROM companies
 INNER JOIN employees ON companies.ID=employees.ID;

 15.Find the name of employees that work in companies made before 2000.

 SELECT employees.name
 FROM employees 
 join companies
 ON (companies.ID = employees.ID)
 WHERE companies.Date < 2000

 16.Find the name of company that has a graphic designer.

SELECT companies.Name
 FROM employees 
join companies
ON (companies.ID = employees.ID)
WHERE employees.Role='Graphic Designer'

 18.Find the person with the highest number of points in students

 SELECT students.Name, MAX(Points) AS max_point
 FROM students


 19.Find the average of points in students

 SELECT AVG(Points)
 AS Average FROM students 

 20.Find the number of students that have 500 points

 SELECT  count(*)  as number_of_students 
 FROM students
 WHERE  Points = 500

 21.Find the names of students that contains 's'

  SELECT  students.Name
  FROM students
  WHERE students.Name LIKE '%s%'

 22.Find all students based on the decreasing order of their points

 SELECT * FROM students ORDER BY Points DESC

