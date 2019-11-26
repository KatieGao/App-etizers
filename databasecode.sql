
//creating the database
CREATE DATABASE 201project;
USE 201project;

CREATE TABLE users (
  user_id INT(11) PRIMARY KEY,
  username VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
);

CREATE TABLE users_favorite
(
  favorite_id INT(11) PRIMARY KEY,
 	dish_id INT(11) NOT NULL,
  user_id INT(11) NOT NULL,
  FOREIGN KEY (dish_id) REFERENCES dishes(dish_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE dishes
(
	dish_id INT(11) PRIMARY KEY,
	restaurant_id INT(11) NOT NULL,
	price DOUBLE(5, 2) NOT NULL,
	dish_name VARCHAR(255) NOT NULL,
	dish_thumbnail TEXT NOT NULL,
	FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

CREATE TABLE restaurants (
Restaurant_id: int(11) PRIMARY KEY,
Restaurant_name: VARCHAR(255) NOT NULL  UNIQUE,
Phone: Varchar(10) UNIQUE,
Address: Varchar(55) NOT NULL UNIQUE,
Rating: Double(2,1),
Genre_id: int(11) NOT NULL,
restaurant_thumbnail: TEXT NOT NULL,
FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)



CREATE TABLE reviews
(
review_id INT(11) PRIMARY KEY,
dish_id INT(11) NOT NULL,
content TEXT NOT NULL, 
time_stamp DATETIME NOT NULL,
FOREIGN KEY (dish_id) REFERENCES (dish_id)
)  

CREATE TABLE genres
(
genre_id INT(11) PRIMARY KEY NOT NULL,
genre_name VARCHAR(255) NOT NULL,
)

CREATE TABLE dishes_ingredients(
    index INT(11) PRIMARY KEY,
    dish_id INT(11) NOT NULL,
    ingredient_id INT(11) NOT NULL,
    FOREIGN KEY (dish_id) REFERENCES dishes(dish_id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredients(ingredient_id)
);
 
CREATE TABLE ingredients(
   ingredient_id INT(11) PRIMARY KEY,
   ingredient_name varchar(255),
);

  
