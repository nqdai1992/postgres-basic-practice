SELECT COUNT(abbrev), abbrev  FROM pg_timezone_names GROUP BY abbrev HAVING COUNT(abbrev) > 10;