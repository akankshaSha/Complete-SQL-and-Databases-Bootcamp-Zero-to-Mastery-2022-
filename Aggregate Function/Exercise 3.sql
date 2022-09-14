-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: World
 */
-- 

-- Question 1: How many official languages are there?
-- Table: countrylanguage
SELECT count(*) FROM countrylanguage WHERE isofficial;
-- Question 2: What is the average life expectancy in the world?
-- Table: country
SELECT avg(lifeexpectancy) FROM country;
-- Question 3: What is the average population for cities in the netherlands?
-- Table: city
SELECT avg(population) FROM city WHERE countrycode='NLD';
