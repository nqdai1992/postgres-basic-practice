## Week1
- Alter table can alter indexes, uniquess, constraints, foreign keys, can run on a live database. See detail [here](https://www.postgresql.org/docs/9.1/sql-altertable.html)
```sql
ALTER TABLE <table_name> [DROP COLUMN | ALTER COLUMN | ADD COLUMN ....]
```
- Cast Date:
```sql
NOW()::[DATE | TIME | TIMESTAMP]
CAST(NOW() AS [DATE | TIME | TIMESTAMP])
```

- User interval to caculate time
```sql
NOW () - INTERVAL <date-string>
-- date string: 1 day, 2 days, 1 minute, 2 minutes ....
```

- DATE_TRUNC
```sql
DATE_TRUNC (<date_string>, <time>)
```

- Distinct and distinct on
```sql
SELECT DISTINCT <target_column> from <table_name>;
SELECT DISTINCT ON (<target_column>) <view_column_1>, <view_column_2>... FROM <table_name>;
```

- Group by and Having clause
```sql
SELECT <aggregate_function>, <column_view1>, <column_view1>  FROM <table_name> [WHERE <selection_criteria>] GROUP BY <column_name1>, <column_name2> [HAVING <selection_criteria>];
```