ID/*
Siemens Skills Program Challenge
Question 8 Write an SQL query that select all distinct pet names.

*/

CREATE TABLE dogs (
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
  );
 
 
CREATE TABLE cats (
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
 );

INSERT INTO dogs (id, name) VALUES
(1, 'Rex'),
(2, 'Buddy'),
(3, 'Max'),
(4, 'Luna'),
(5, 'Charlie');

INSERT INTO cats (id, name) VALUES
(1, 'Luna'),
(2, 'Milo'),
(3, 'Charlie'),
(4, 'Simba'),
(5, 'Nala');

SELECT dogs.name AS PetName
FROM dogs
WHERE dogs.name NOT IN (SELECT cats.name FROM cats)
UNION
SELECT cats.name AS PetName
FROM cats
WHERE cats.name NOT IN (SELECT dogs.name FROM dogs);
  
  