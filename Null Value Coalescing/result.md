**Schema (PostgreSQL v12)**

    CREATE TABLE "Student" (
    	id serial PRIMARY KEY,
      	name varchar(255),
      	lastName varchar(255),
      	age int
    );
    
    
    INSERT INTO "Student" (name, lastName, age) VALUES (
      'STUDENT 1',
      NULL,
      NULL
    );
    
    INSERT INTO "Student" (name, lastName, age) VALUES (
      'STUDENT 2',
      NULL,
      25
    );
    
    INSERT INTO "Student" (name, lastName, age) VALUES (
      null,
      'LAST NAME 3',
      20
    );
    
    INSERT INTO "Student" (name, lastName, age) VALUES (
      null,
      null,
      34
    );
    
    INSERT INTO "Student" (name, lastName, age) VALUES (
      'STUDENT 5',
      NULL,
      58
    );

---

**Query #1**

    SELECT AVG(COALESCE(age, 15)) FROM "Student";

| avg                 |
| ------------------- |
| 30.4000000000000000 |

---
**Query #2**

    SELECT COALESCE(name, 'John'), COALESCE(lastname, 'Doe') FROM "Student";

| coalesce  | coalesce    |
| --------- | ----------- |
| STUDENT 1 | Doe         |
| STUDENT 2 | Doe         |
| John      | LAST NAME 3 |
| John      | Doe         |
| STUDENT 5 | Doe         |

---

[View on DB Fiddle](https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0)
