DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;

CREATE TABLE users(
  id serial PRIMARY KEY,
  first_name varchar(255),
  last_name varchar(255),
  email varchar(255),
  age int
);

CREATE TABLE posts(
  id serial PRIMARY KEY,
  content text,
  user_id int REFERENCES users (id)
);


INSERT INTO users (first_name, last_name, email, age) VALUES ('Kevin', 'Kim', 'k@kim.co', 23);
INSERT INTO users (first_name, last_name, email, age) VALUES ('James', 'Taylor', 'james@gmail.com', 29);
INSERT INTO users (first_name, last_name, email, age) VALUES ('Abby', 'Horton', 'abbi@hort.org', 42);
INSERT INTO users (first_name, last_name, email, age) VALUES ('Amir', 'Sedghi', 'asedghi@science37.com', 100);
INSERT INTO users (first_name, last_name, email, age) VALUES ('Kim', 'Ecklund', 'k@eck.com', 43);

INSERT INTO posts (content, user_id) VALUES ('lorem ipsum ect', 3);
INSERT INTO posts (content, user_id) VALUES ('I like turtles', 3);
INSERT INTO posts (content, user_id) VALUES ('Weeee', 3);
INSERT INTO posts (content, user_id) VALUES ('8+7=15 probably', 4);
INSERT INTO posts (content, user_id) VALUES ('chicago... no one gets it guys', 2);
INSERT INTO posts (content, user_id) VALUES ('nice view up here', 5);
INSERT INTO posts (content, user_id) VALUES ('what even is math', 4);
INSERT INTO posts (content, user_id) VALUES ('hi kevin', 1);
