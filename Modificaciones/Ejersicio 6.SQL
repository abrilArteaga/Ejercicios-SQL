
UPDATE post
SET body = ""
WHERE author_id = (SELECT id FROM user WHERE username like "Belu06%")