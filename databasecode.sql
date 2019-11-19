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
//creating the dishes_ingredients table
CREATE TABLE dishes_ingredients(
    index int(11) PRIMARY KEY 
    FOREIGN KEY (dish_id) REFERENCES dishes(dish_id)
    FOREIGN KEY (ingredient_id) REFERENCES ingredients(ingredient_id)
);

//creating the dishes table
CREATE TABLE dishes(
    dish_id int(11) PRIMARY KEY
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
    price double(5,2)
    dish_name varchar(255)
    dish_thumbnail varchar(255)    
);

//creating the ingredients table
CREATE TABLE dishes_ingredients(
   ingredient_name varchar(255)
    FOREIGN KEY (ingredient_id) REFERENCES dishes_ingredients(ingredient_id)
);
