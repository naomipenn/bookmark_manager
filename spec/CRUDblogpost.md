CRUD and SQL

CRUD is an acronym for Create, Read, Update and Delete. It describes the four basic functions of persistent storage, as well as all major functions that are implemented in most relational database applications.

SQL stands for Structured Query Language. It communicates with a database. It is the standard language for relational database management systems.

Each letter in CRUD maps to an SQL command:

Create => Insert => INSERT INTO
This creates new rows in a table.
Read => Select => SELECT * FROM
This asks the database to select everything from the table. Good for inspecting the table after changes.
Update => Update => UPDATE "students" SET NAME = "Sara Veal" WHERE ID = 1;
This changes existing values in a database.
Delete => Delete => DELETE FROm "students" WHERE ID = 1;
This removes a row from the table.
