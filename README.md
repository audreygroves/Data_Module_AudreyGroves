# Friends and Relationships Database

This README provides instructions on how to run and explore the Friends and Relationships database. The database includes information about friends, their relationships, and hobbies.

## Setting up the Database

1. **Table Creation:** Two tables, `Friends` and `Relationships`, are created to store information about friends and their relationships. Additionally, a table named `Hobbies` is created to capture friends' hobbies.

2. **Data Population:** Sample data is inserted into the tables using `INSERT INTO` statements.

## Querying the Database

### Friends Table

- **Friends List:**
  ```sql
  SELECT fullname FROM Friends;
  ```

### Relationships Table

- **Special Relationships:**
  ```sql
  SELECT a.fullname, b.fullname, Relationships.relationship
  FROM Friends a
  JOIN Relationships
  ON a.id = Relationships.friends_id_1
  JOIN Friends b
  ON b.id = Relationships.friends_id_2;
  ```

### Hobbies Table

- **Friends and Their Hobbies:**
  ```sql
  SELECT Hobbies.name AS Hobby, Friends.fullname AS Name
  FROM Hobbies
  JOIN Friends
  ON Hobbies.friends_id = Friends.id
  ORDER BY friends.id;
  ```

- **Similar Hobbies for Friends with Special Relationships:**
  ```sql
  SELECT a.fullname, b.fullname, Relationships.relationship, c.name
  FROM Friends a
  JOIN Relationships
  ON a.id = Relationships.friends_id_1
  JOIN Friends b
  ON b.id = Relationships.friends_id_2
  JOIN Hobbies c
  ON a.id = c.friends_id
  JOIN Hobbies d
  ON b.id = d.friends_id
  WHERE c.name = d.name;
  ```

Feel free to modify and run these queries to explore the Friends and Relationships database.

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
