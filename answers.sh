1.
select Name from students
2.
select * from students WHERE Age>30
3.
SELECT  name FROM students WHERE Gender='F' AND Age=30
4.
SELECT  Points FROM students WHERE name='Alex'
5.
INSERT INTO students (name, Age, Gender, Points)
VALUES ('souhad', 20, 'F', 100);

6.
UPDATE students
SET Points = 400
WHERE name='Basma'

7.
UPDATE students
SET Points = 100
WHERE name='Alex'

10.
 CREATE TABLE graduates
 AS SELECT
 *
 FROM students
 WHERE name='Layal'
 
 11.
 ALTER TABLE graduates
 ADD Graduation date ;

 INSERT INTO graduates (Graduation) VALUES ('08-09-2018');

 12.
 DELETE FROM students WHERE name='Layal';

