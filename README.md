# Friends and Relationships Database

This repository contains SQL code to create a simple database that represents a group of friends and their relationships. The database includes tables for friends, relationships, and hobbies, as well as queries to retrieve information about friends, their special relationships, and shared hobbies.

## Tables

### Friends Table
This table stores information about friends, including their unique ID and full name.
```sql

CREATE TABLE Friends 
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT);

This table represents relationships between friends, including their unique ID, the IDs of the two friends involved, and the nature of their relationship.

### Relationships Table
```sql
CREATE TABLE Relationships
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    friends_id_1 INTEGER,
    friends_id_2 INTEGER,
    relationship TEXT);

This table records the hobbies of friends, including the unique ID of the hobby, the name of the hobby, and the ID of the friend associated with the hobby.

CREATE TABLE Hobbies
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    friends_id INTEGER);

Data Population
The provided SQL code also includes sample data to populate the tables, including friends' names, relationships, and hobbies.

Queries
The following queries provide insights into the relationships and hobbies of the friends:
Friends and Hobbies
SELECT Hobbies.name AS Hobby, Friends.fullname AS Name
    FROM Hobbies
    JOIN Friends
    ON Hobbies.friends_id = Friends.id
    ORDER BY friends.id;
Special Relationships
SELECT a.fullname, b.fullname, Relationships.relationship
    FROM Friends a
    JOIN Relationships
    ON a.id = Relationships.friends_id_1
    JOIN Friends b
    ON b.id = Relationships.friends_id_2;
Similar Hobbies in Special Relationships
Feel free to use or modify this database schema and queries to suit your needs. Enjoy exploring the relationships and hobbies of these friends!

