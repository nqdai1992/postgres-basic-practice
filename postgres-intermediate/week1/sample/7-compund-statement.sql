INSERT INTO fav (post_id, account_id, howmuch) VALUES (1,1,1) RETURNS *;

UPDATE fav SET howmuch=howmuch + 1 WHERE post_id = 1 AND account_id = 1 RETURNS *;

INSERT INTO fav (post_id, account_id) VALUES (1,1,1) 
ON CONFLICT (post_id, account_id)
DO UPDATE SET howmuch=fav.howmuch + 1 
RETURNS *;
