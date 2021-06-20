BEGIN;
SELECT howmuch FROM fav WHERE account_id=1 AND post_id=1 FOR UPDATE OF fav;

UPDATE fav SET howmuch FROM fav WHERE account_id=1 AND post_id=1;

ROLLBACK;
-- COMMIT;

SELECT howmuch FROM fav WHERE account_id=1 AND post_id;