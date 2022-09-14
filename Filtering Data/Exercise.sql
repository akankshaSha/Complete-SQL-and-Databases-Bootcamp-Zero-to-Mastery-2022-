--how many female customers are there from state of Oregon or New York
SELECT count(*) 
FROM customers
WHERE (state='OR' OR state='NY') AND gender='F';

--how many customers arent 55?
SELECT count(*) 
FROM customers
WHERE NOT age=55;

--who over the age of 44 has an income of 100 000
SELECT *
FROM customers
WHERE income=100000 AND age>44;

--exercise:
-- How many female customers do we have from the state of Oregon (OR)?
SELECT count(*) 
FROM customers
WHERE state='OR' AND gender='F';

-- Who over the age of 44 has an income of 100 000 or more? (excluding 44)
SELECT *
FROM customers
WHERE income>=100000 AND age>44;

-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)
SELECT *
FROM customers
WHERE (age BETWEEN 30 AND 50) AND income<50000;

-- What is the average income between the ages of 20 and 50? (Excluding 20 and 50)
SELECT avg(income)
FROM customers
WHERE age>20 AND age<50;