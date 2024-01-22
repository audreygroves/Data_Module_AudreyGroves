# Friends and Relationships Database

This repository contains SQL code to create a simple database that represents a group of friends and their relationships. The database includes tables for friends, relationships, and hobbies, as well as queries to retrieve information about friends, their special relationships, and shared hobbies.

## Tables

### Friends Table
```sql
CREATE TABLE Friends 
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT);

This table represents relationships between friends, including their unique ID, the IDs of the two friends involved, and the nature of their relationship.

CREATE TABLE Relationships
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    friends_id_1 INTEGER,
    friends_id_2 INTEGER,
    relationship TEXT);
