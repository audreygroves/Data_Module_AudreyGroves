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


# Marvel Heroes and Villains Database

This README provides instructions on how to run and explore the Marvel Heroes and Villains database. The database includes information on various Marvel characters, such as their name, popularity, alignment, gender, physical attributes, and power grid data.

## Setting up the Database

1. **Data Source:** The data is collected from [Marvel Wikia](http://marvel.wikia.com/Main_Page) and [Observation Deck](http://observationdeck.io9.com/something-i-found-marvel-character-popularity-poll-cb-1568108064).

2. **Data Structure:** The database is represented by a table named `marvels` with the following columns:
   - `ID` (Primary Key)
   - `name`
   - `popularity`
   - `alignment`
   - `gender`
   - `height_m`
   - `weight_kg`
   - `hometown`
   - `intelligence`
   - `strength`
   - `speed`
   - `durability`
   - `energy_Projection`
   - `fighting_Skills`

3. **Data Population:** Sample data is inserted into the `marvels` table using `INSERT INTO` statements.

## Querying the Database

### Basic Queries

- **Maximum Popularity:**
  ```sql
  SELECT name, MAX(popularity) AS most_popular_score FROM marvels;
  ```

- **Minimum Strength:**
  ```sql
  SELECT name, MIN(strength) AS least_strong FROM marvels;
  ```

- **Average Intelligence by Alignment:**
  ```sql
  SELECT alignment, ROUND(AVG(intelligence)) AS avg_intelligence FROM marvels GROUP BY alignment;
  ```

- **Average Strength by Hometown:**
  ```sql
  SELECT hometown, ROUND(AVG(strength)) AS Avg_Strength FROM marvels GROUP BY hometown ORDER BY Avg_Strength;
  ```

### Using HAVING Clause

- **Average Intelligence by Gender (Filtered):**
  ```sql
  SELECT gender, AVG(intelligence) AS avg_intelligence FROM marvels GROUP BY gender HAVING avg_intelligence < 4;
  ```

### Using CASE Statement

- **Popularity Grouping:**
  ```sql
  SELECT COUNT(*),
      CASE
          WHEN popularity > 85 THEN "Almost Everyone Loves"
          WHEN popularity > 50 THEN "Most people love" 
          WHEN popularity > 20 THEN "Some people love"
          ELSE "Almost no-one loves"
      END AS "popularity_grouping" 
  FROM marvels
  GROUP BY popularity_grouping 
  ORDER BY COUNT(*);
  ```

### Using AND/OR in Filtering

- **High Strength or Intelligence Characters:**
  ```sql
  SELECT name, strength, intelligence FROM marvels WHERE (strength > 5 OR intelligence > 5);
  ```

- **Female Characters who are Evil or Neutral:**
  ```sql
  SELECT name, alignment FROM marvels WHERE gender = "Female" AND (alignment = "Evil" OR alignment = "Neutral");
  ```

Feel free to modify and run these queries to explore the Marvel Heroes and Villains database.
