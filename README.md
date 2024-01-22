# Famous People Database - Friends and Relationships

This repository contains SQL code to create a simple database that represents a group of friends and their relationships. The database includes tables for friends, relationships, and hobbies, as well as queries to retrieve information about friends, their special relationships, and shared hobbies.

## Tables

### Friends Table
This table stores information about friends, including their unique ID and full name.

### Relationships Table
This table represents relationships between friends, including their unique ID, the IDs of the two friends involved, and the nature of their relationship.

### Hobbies Table
This table records the hobbies of friends, including the unique ID of the hobby, the name of the hobby, and the ID of the friend associated with the hobby.

### Data Population
The provided SQL code also includes sample data to populate the tables, including friends' names, relationships, and hobbies.

## Queries
The included queries provide insights into the relationships and hobbies of the friends

Feel free to use or modify this database schema and queries to suit your needs. Enjoy exploring the relationships and hobbies of these friends!


## Marvel Heroes and Villains Database
This repository contains a database of Marvel heroes and villains, including information on popularity, power grid attributes, and other details. The data is sourced from Marvel Wikia, observationdeck.io9, and Khan Academy.

### Database Schema
The database consists of a single table named marvels with the following columns:

ID (INTEGER, PRIMARY KEY)
name (TEXT)
popularity (INTEGER)
alignment (TEXT)
gender (TEXT)
height_m (NUMERIC)
weight_kg (NUMERIC)
hometown (TEXT)
intelligence (INTEGER)
strength (INTEGER)
speed (INTEGER)
durability (INTEGER)
energy_Projection (INTEGER)
fighting_Skills (INTEGER)

### Queries
1. Aggregate Statistics
Max Popularity: SELECT name, MAX(popularity) AS most_popular_score FROM marvels
Min Strength: SELECT name, MIN(strength) AS least_strong FROM marvels
Avg Intelligence by Alignment: SELECT alignment, ROUND(AVG(intelligence)) AS avg_intelligence FROM marvels GROUP BY alignment
Avg Strength by Hometown: SELECT hometown, ROUND(AVG(strength)) AS Avg_Strength FROM marvels GROUP BY hometown ORDER BY Avg_Strength

2. HAVING Clause
Avg Intelligence by Gender (< 4): SELECT gender, AVG(intelligence) AS avg_intelligence FROM marvels GROUP BY gender HAVING avg_intelligence < 4

3. Filtering with AND/OR
Characters with Strength or Intelligence > 5: SELECT name, strength, intelligence FROM marvels WHERE (strength > 5 OR intelligence > 5);
Female Characters who are Evil or Neutral: SELECT name, alignment FROM marvels WHERE gender = "Female" AND (alignment = "Evil" OR alignment = "Neutral");

Explore and analyze the Marvel data with these queries!

