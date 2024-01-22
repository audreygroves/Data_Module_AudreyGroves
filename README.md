# Friends and Relationships Database

This repository contains SQL code to create a simple database that represents a group of friends and their relationships. The database includes tables for friends, relationships, and hobbies, as well as queries to retrieve information about friends, their special relationships, and shared hobbies.

## Tables

### Friends Table
```sql
CREATE TABLE Friends 
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT);
