1. SELECT * FROM states;
2. SELECT * FROM regions;
3. SELECT state_name, population FROM states;
4. SELECT state_name, population FROM states ORDER BY population
5. SELECT state_name FROM states where region_id = 7;
6. SELECT state_name, population_density FROM states ORDER BY population_density ASC;
7. SELECT state_name FROM states WHERE population BETWEEN 1000000 and 1500000;
8. SELECT state_name, region_id FROM states ORDER BY region_id ASC;
9. SELECT region_name FROM regions WHERE region_name LIKE '%central%
10. SELECT region_name, state_name FROM states LEFT JOIN regions ON states.region_id = regions.id ORDER BY region_id;

#What are databases for?

Data bases are for storing and linking information in useful ways.

#What is a one-to-many relationship?

A one-to-many relationship is when a row in one table can be related to many rows in another table.  For example, if I had an "authors" table and a "books" table, a single author may be linked to a number of books.

#What is a primary key? What is a foreign key? How can you determine which is which?

A primary key is a unique (and often meaningless) identifier of a piece of data.  It is generally a number that increments by one as data is added in rows.  For example, if I had a "customers" table, the primary-key would be the auto-generated id number--starting at 1 and incrementing with each row added so each customer had a unique identifier.  A foreign-key links data from two tables together.  Using our customers example, I could create an "orders" table with the foreign key of "customer_id".  This would link a given order to a customer id number so I or the user could search for orders placed by a given customer.

#How can you select information out of a SQL database? What are some general #guidelines for that?

You use the SELECT keyword, and then add whatever filters you'd like.  You can use * to select all the data, or create a "where" filter to put conditions in.  There are also selectors that will look for patterns in the name of the columns and return matches (kind of like regular expressions).

![MY SCHEMA][schema.jpg]


