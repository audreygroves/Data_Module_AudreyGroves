CREATE TABLE myCoffeeShop (id INTEGER PRIMARY KEY, productType TEXT, productName TEXT, cost NUMERIC, price NUMERIC);

INSERT INTO myCoffeeShop VALUES (001, "Drink", "Cappuccino", .99, 2.50);
INSERT INTO myCoffeeShop VALUES (002, "Drink", "Chai Tea", .50, 2.50);
INSERT INTO myCoffeeShop VALUES (003, "Drink", "Macciato", 1.20, 3.50);
INSERT INTO myCoffeeShop VALUES (004, "Drink", "Cold Brew", 1.50, 3.50);
INSERT INTO myCoffeeShop VALUES (005, "Drink", "Americano", .20, 2.00);
INSERT INTO myCoffeeShop VALUES (006, "Food", "Croissant", .20, 3.00);
INSERT INTO myCoffeeShop VALUES (007, "Food", "Coffee Cake", .50, 3.50);
INSERT INTO myCoffeeShop VALUES (008, "Food", "Bagel", .20, 3.50);
INSERT INTO myCoffeeShop VALUES (009, "Food", "Fruit Cup", 1.20, 4.00);
INSERT INTO myCoffeeShop VALUES (010, "Food", "Donut", .15 , 2.00);
INSERT INTO myCoffeeShop VALUES (011, "Drink Add On", "Caramel Syrup", .05, .99);
INSERT INTO myCoffeeShop VALUES (012, "Drink Add On", "Vanilla Syruo", .05, .99);
INSERT INTO myCoffeeShop VALUES (013, "Drink Add On", "Whip Cream", .01, .50);
INSERT INTO myCoffeeShop VALUES (014, "Drink Add On", "Oat Milk", .20, 1.00);
INSERT INTO myCoffeeShop VALUES (015, "Drink Add On", "Coconut Milk", .30, 1.00);

SELECT *FROM myCoffeeShop ORDER BY price;
SELECT productName, MAX(price) FROM myCoffeeShop;