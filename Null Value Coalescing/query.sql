--Assuming a students minimum age for the class is 15, what is the average age of a student?
SELECT AVG(COALESCE(age, 15)) FROM "Student";

-- Replace all empty first or last names with a default?
SELECT COALESCE(name, 'John'), COALESCE(lastname, 'Doe') FROM "Student";