--Challenge 1:
--Select all posts and display the user that created the post.
--
--
--SELECT content, CONCAT(first_name,last_name) As Name
--FROM posts
--INNER JOIN users ON users.id = posts.user_id;

--
--### Challenge 2:
--Select all posts made by the user with the id of 3.


--
--SELECT content, CONCAT(first_name,last_name) As Name
--FROM posts
--INNER JOIN users ON users.id = posts.user_id Where users.id=3


--
--### Challenge 3:
--Display all users and the posts they made. Display a user even if they haven't made a post.
----
--
--SELECT CONCAT(first_name,' ',last_name) AS Name , content AS posts
--FROM users
--FULL JOIN posts ON users.id = posts.user_id;

--
----### Challenge 4:
--Display all users and their posts ordered by age (from greatest age to lowest).

--SELECT  content,  CONCAT(first_name,' ',last_name) AS Name,age
--FROM users
--FULL JOIN posts ON users.id = posts.user_id ORDER BY AGE DESC

--Challenge 5 (stretch):
--Display each users first name along with the number of posts they have made.

--PASS

--
--### Challenge 6:
--Display all comments and the contents of the post they were made on.

--?

--SELECT comments.content AS comment, posts.content AS post
--FROM posts
--INNER JOIN comments ON comments.post_id = posts.id;

--

--### Challenge 7:
--Display all comments with the contents of the post and the user that made the comment.
--
--SELECT comments.content AS comment, posts.content AS post, CONCAT(first_name,' ',last_name) AS Name
--FROM posts JOIN comments ON comments.post_id = posts.id JOIN users ON comments.user_id=users.id;
--

--
--### Challenge 8:
--Display all comments where the user who wrote the comment has an age > 30.
--SELECT*
--From comments  JOIN users ON users.id=comments.user_id WHERE age>30

--### Challenge 9:
--Display all the posts along with what user made the post, also display any comments along with the users first name that made the comment.
--
--SELECT  
--posts.content AS Post_contents ,
----CONCAT(first_name,' ',last_name) AS Name,
--users.first_name,
--comments.content AS Comment,
--X.first_name
----X.first_name AS yo
--From posts  
--INNER JOIN users ON users.id=posts.user_id
--FULL JOIN comments ON posts.id=post_id
--LEFT JOIN users AS X ON X.id = comments.user_id;

--
--### Challenge 10:
--Display all the posts with what user made the post, also display the total count of comments each post has.

--
SELECT posts.content, users.first_name, COUNT(comments.id)
FROM posts
JOIN users
ON posts.user_id = users.id
LEFT JOIN comments
ON comments.post_id = posts.id
GROUP BY posts.content, users.first_name;
