--how many female customers are there from state of Oregon or New York
SELECT count(*) 
FROM customers
WHERE (state='OR' OR state='NY') AND gender='F';

