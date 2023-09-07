DELETE FROM post
WHERE author_id = (SELECT id from user WHERE username like "Belu06")

DELETE FROM user 
WHERE username like "Belu06";