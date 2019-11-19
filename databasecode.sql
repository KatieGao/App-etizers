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
