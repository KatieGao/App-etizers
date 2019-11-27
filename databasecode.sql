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
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);
INSERT INTO restaurants (restaurant_name,genre_id)
  VALUES ('California PIZZA KITCHEN',2),
         ('Lemonade',3),
         ('LAW CAFE',3),
         ('HABIT BURGERS',4),
	 ('PANDA EXPRESS',1);

//creating the dishes_ingredients table
CREATE TABLE dishes_ingredients(
    index int(11) PRIMARY KEY AUTO_INCREMENT, 
    dish_id int(11),
    FOREIGN KEY (dish_id) REFERENCES dishes(dish_id)
    
);


//creating the dishes table
CREATE TABLE dishes(
    dish_id int(11) PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id),
    price double(5,2),
    dish_name varchar(255),
    dish_thumbnail varchar(255)    
);
INSERT INTO dishes (dish_name,price,restaurant_id)
  VALUES ('SEDONA TORTILLA',3.99,1),
  	 ('THE ORIGINAL BBQ CHICKEN CHOPPED SALAD' , 8.19, 1),
	 ('SANTA FE POWER BOWL' , 8.19, 1),
  	 ('CHICKEN TEQUILA FETTUCCINE' , 9.19, 1),
  	 ('KUNG PAO SPAGHETTI' , 8.19, 1),
  	 ('KUNG PAO SPAGHETTI + Chicken' , 9.19, 1),
  	 ('KUNG PAO SPAGHETTI + Shrimp' , 11.99, 1),
  	 ('PENNE BOLOGNESE' , 9.19, 1),
  	 ('THE ORIGINAL BBQ CHICKEN PIZZA' , 8.09, 1),
  	 ('MARGHERITA' , 7.69, 1),
  	 ('MUSHROOM PEPPERONI SAUSAGE' , 8.19, 1),
	 ('PEPPERONI' , 7.69, 1),
  	 ('MEAT CRAVERS' , 8.59, 1),
  	 ('AHI TUNA AVOCADO' , 12.00, 2),
  	 ('SPICY HAWAIIAN AHI TUNA' , 12.00, 2),
  	 ('MANGO CHICKEN' , 11.00, 2),
  	 ('TERIYAKI CHICKEN RICE BOWL', 9.49, 3),
  	 ('SALMON RICE BOWL' , 10.49, 3),
  	 ('PORK CUTLET RICE BOWL' , 9.99, 3),
  	 ('BBQ BEEF BOWL' , 9.99, 3),
  	 ('CHOP SUEY RICE BOWL' , 8.49, 3),
  	 ('CHARBURGER' , 3.75, 4),
  	 ('PORTABELLA CHARBURGER' , 5.35, 4),
  	 ('TERIYAKI CHARBURGER' , 4.05, 4),
  	 ('VEGGIE BURGER' , 6.05, 4),
  	 ('CHICKEN CLUB SANDWICH' , 8.20, 4),
  	 ('AHI TUNA FILET SANDWICH' , 8.20, 4),
  	 ('ORANGE CHICKEN' , 4.40, 5),
  	 ('BROCCOLI BEEF' , 4.40, 5),
	 ('HONEY WALNUT SHRIMP' , 5.65, 5),
  	 ('FRIED RICE' , 3.40, 5),
	 ('CHOW MEIN' , 3.40, 5),
  	 ('CHICKEN EGG ROLL' , 1.95, 5),
  	 ('VEGGIE SPRING ROLL' , 1.95, 5);


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
         ('tomatoes'),
         ('corn'),
         ('chillies'),
         ('vegan'),
         ('healthy'),
         ('vegetarian'),
         ('beans'),
         ('corn'),
	 ('chicken'),
	 ('cabbage'),
	 ('avocado'),
         ('pepper'),
         ('noodles'),
	 ('chinese'),
	 ('shrimp'),
	 ('seafood'),
	 ('meat sauce'),
	 ('BBQ Sauce'),
	 ('cheese'),
	 ('mushroom'),
	 ('pepperoni'),
	 ('sausage'),
	 ('ham'),
	 ('rice'),
	 ('tobiko'),
	 ('tuna'),
	 ('fish'),
	 ('mango'),
	 ('mango sauce'),
	 ('carrot'),
	 ('teriyaki'),
	 ('salmon'),
	 ('pork'),
	 ('curry'),
         ('beef'),
         ('american'),
	 ('fast food'),
         ('pineapple'),
	 ('orange'),
	 ('spicy'),
	 ('broccoli'),
	 ('soy'),
	 ('honey'),
	 ('walnut'),
	 ('tempura'),
	 ('nuts'),
	 ('fried'),
	 ('chow mein'),
	 ('egg'),
	 ('roll');
     
