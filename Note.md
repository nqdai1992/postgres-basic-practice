## Week1
- Access database in local host by command: `psql -U <username> <databasename>` or `psql <databasename> <username>`
- Access database in other host by command: `psql -h <host> -p <port> -U <username> <databasename>`
- If user is superuser prompt is `#`, if not prompt is `=>`
- Command `\dt` to list of the relations (table)
- Command `\d+ <tablename>` to show the schema
- Command `\i <command>` run command
- Command `\q` logout psql
- Command `\l` or `\l+` to list all databases
- Schema is a contract of the table.
- Every query must end with ';'

```sql
CREATE TABLE users (
    name VARCHAR(128), -- It means I want just save maximum of 128 character
    email VARCHAR(128)
);
```

## Week2

- Command `\copy` to copy data to table

### Working with the table

- Insert table:
```sql
INSERT INTO <table_name> (<column_name_1>, <column_name_2>, ...) VALUES (<value_1>, <value_2>, ...);
```

- Delete table:
The delete command implies loop.

*Delete a row in table base on selection criteria*
```sql
DELETE FROM <table_name> WHERE <selection_criteria>;
```

*Delete all the rows*
```sql
DELETE FROM <table_name>;
```

- Update table:
```sql
UPDATE FROM <table_name> SET <column>=<value> WHERE <selection_criteria>;
```

- Retrive data from the table:
```sql
SELECT * | <colum_name_1>, <column_name_2>, ... FROM <table_name> [WHERE <selection_criteria>];
```

- Order by clause:
Default result is sorted in ascending order
```sql
SELECT * | <colum_name_1>, <column_name_2>, ... FROM <table_name> ORDER BY  <column_name> [ASC | DESC];
```

- Like clause:

Must scan all record, where clause know exact match
```sql
SELECT * | <colum_name_1>, <column_name_2>, ... FROM <table_name> WHERE <selection_criteria> LIKE <pattern>;
```

- Limit/Offset clause:
Using for pagination
Offset starts from 0
```sql
SELECT * | <colum_name_1>, <column_name_2>, ... FROM <table_name> [ORDER BY <column_name] OFFSET <number> LIMIT<number>;
```

- Counting rows
```sql
SELECT count(*) FROM <table_name> [WHERE <selection_criteria>]
```

### Data types