/*
Renaming Columns:
*/
SELECT emp_no AS "Employee #", birth_date AS "Birthday"
FROM "public"."employees";

/*
Concatination Columns:
*/
SELECT CONCAT(emp_no, ' ', title) AS "employee title" FROM titles;
-- double colon indicte column name
--single colon indicate string (in values)

/*
Exercise:
Concatinate the first and last name of the employee into one column
rename the concatenated column
*/
SELECT CONCAT(first_name,' ',last_name) AS "Full Name" FROM employees;
