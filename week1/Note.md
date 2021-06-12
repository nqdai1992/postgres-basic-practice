## Week1
- Access database in local host by command: `psql -U <username> <databasename>` or `psql <databasename> <username>`
- Access database in other host by command: `psql -h <host> -p <port> -U <username> <databasename>`
- If user is superuser prompt is `#`, if not prompt is `=>`
- Command `\dt` to list of the relations (table)
- Command `\d+ <tablename>` to show the schema
- Command `\i <command>` run command
- Command `\q` logout psql
- Schema is a contract of the table.
- Every query must end with ';'

```sql
CREATE TABLE users (
    name VARCHAR(128), -- It means I want just save maximum of 128 character
    email VARCHAR(128)
);
```