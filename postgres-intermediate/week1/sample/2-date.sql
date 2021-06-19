SELECT NOW(), NOW() AT TIME ZONE 'UTC', NOW () AT TIME ZONE 'HST';

--               now              |          timezone          |          timezone          
-- -------------------------------+----------------------------+----------------------------
--  2021-06-19 08:59:29.239202+07 | 2021-06-19 01:59:29.239202 | 2021-06-18 15:59:29.239202

-- CASTING DATE

SELECT NOW()::DATE, CAST(NOW() AS DATE), CAST(NOW() AS TIME);

--     now     |    now     |       now       
-- ------------+------------+-----------------
--  2021-06-19 | 2021-06-19 | 09:15:16.579647

SELECT NOW()::DATE, NOW() - INTERVAL '2 days', (NOW() - INTERVAL '2 days')::DATE;

--     now     |           ?column?            |    date    
-- ------------+-------------------------------+------------
--  2021-06-19 | 2021-06-17 09:18:17.213867+07 | 2021-06-17