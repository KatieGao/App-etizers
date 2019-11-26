//creating the database
CREATE DATABASE 201project;
USC 201project;

CREATE TABLE users
(
  user_id INT(11) NOT NULL,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  PRIMARY KEY (user_id)
);

//creating the genres table
CREATE TABLE genres(
    genre_id int(11) PRIMARY KEY AUTO_INCREMENT, 
    genre_name VARCHAR(255) NOT NULL
);
INSERT INTO genres (genre_name)
  VALUES ('chinese'),
         ('pizza'),
         ('bowl'),
         ('burger');
	 
//creating the restaurants table
CREATE TABLE restaurants(
    restaurant_id int(11) PRIMARY KEY AUTO_INCREMENT, 
    restaurant_name VARCHAR(255) NOT NULL,
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id),
);
INSERT INTO restaurants (restaurant_name,genre_id)
  VALUES ('California PIZZA KITCHEN',2),
         ('Lemonade',3),
         ('LAW CAFE',3),
         ('HABIT BURGERS',4),
	 ('PANDA EXPRESS',1);

//creating the dishes_ingredients table
CREATE TABLE dishes_ingredients(
    index int(11) PRIMARY KEY, 
    FOREIGN KEY (dish_id) REFERENCES dishes(dish_id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredients(ingredient_id)
);


//creating the dishes table
CREATE TABLE dishes(
    dish_id int(11) PRIMARY KEY,
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id),
    price double(5,2),
    dish_name varchar(255),
    dish_thumbnail varchar(255)    
);

//creating the ingredients table
CREATE TABLE ingredients(
    ingredient_name varchar(255),
    ingredient_id int(11) PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (ingredient_id) REFERENCES dishes_ingredients(ingredient_id)
);
INSERT INTO ingredients (ingredient_name)
  VALUES ('soup'),
         ('salad'),
         ('pasta'),
         ('pizza'),
         ('bowl'),
         ('burger'),
         ('sandwich'),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         (),
         ();
