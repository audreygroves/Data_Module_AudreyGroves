/* Create table about the people and what they do here */

CREATE TABLE Friends 
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT);
    
INSERT into Friends (fullname) VALUES ("Rachel Green");
INSERT into Friends (fullname) VALUES ("Monica Geller");
INSERT into Friends (fullname) VALUES ("Chandler Bing");
INSERT into Friends (fullname) VALUES ("Joey Tribbiani");
INSERT into Friends (fullname) VALUES ("Ross Geller");
INSERT into Friends (fullname) VALUES ("Pheobe Buffay");

CREATE TABLE Relationships
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    friends_id_1 INTEGER,
    friends_id_2 INTEGER,
    relationship TEXT);
    
INSERT into Relationships (friends_id_1, friends_id_2, relationship) VALUES (1, 5, "dating");
INSERT into Relationships (friends_id_1, friends_id_2, relationship) VALUES (2, 3, "married");
INSERT into Relationships (friends_id_1, friends_id_2, relationship) VALUES (1, 2, "roommates");
INSERT into Relationships (friends_id_1, friends_id_2, relationship) VALUES (3, 4, "roommates");
INSERT into Relationships (friends_id_1, friends_id_2, relationship) VALUES (2, 5, "siblings");

CREATE TABLE Hobbies
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    friends_id INTEGER);
INSERT into Hobbies (name, friends_id) VALUES ("cooking", 2);
INSERT into Hobbies (name, friends_id) VALUES ("cooking", 4);
INSERT into Hobbies (name, friends_id) VALUES ("dancing", 2);
INSERT into Hobbies (name, friends_id) VALUES ("dancing", 5);
INSERT into Hobbies (name, friends_id) VALUES ("shopping", 1);
INSERT into Hobbies (name, friends_id) VALUES ("singing", 6);
INSERT into Hobbies (name, friends_id) VALUES ("watching TV", 3);
INSERT into Hobbies (name, friends_id) VALUES ("watching TV", 4);


/*table to show hobbies of friends*/
SELECT Hobbies.name AS Hobby, Friends.fullname AS Name
    FROM Hobbies
    JOIN Friends
    ON Hobbies.friends_id = Friends.id
    ORDER BY friends.id;

/*table to show special relationships between friends*/
SELECT a.fullname, b.fullname, Relationships.relationship
    FROM Friends a
    JOIN Relationships
    ON a.id = Relationships.friends_id_1
    JOIN Friends b
    ON b.id = Relationships.friends_id_2;
    
/* table to show similar hobbies for friends with special relationships*/ 
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
    

