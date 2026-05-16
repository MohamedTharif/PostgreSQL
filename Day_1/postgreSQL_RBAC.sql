-- 1. Create databases
CREATE DATABASE db1;
CREATE DATABASE db2;

-- 2. Create role (group role)
CREATE ROLE sysadmin;

-- 3. Create login user
CREATE ROLE sa WITH LOGIN PASSWORD 'Cool123';

-- 4. Assign role to user
GRANT sysadmin TO sa;

-- 5. Allow database access
GRANT CONNECT ON DATABASE db1 TO sysadmin;

-- 6. Allow schema access
GRANT USAGE ON SCHEMA public TO sysadmin;
GRANT CREATE ON SCHEMA public TO sysadmin;

-- 7. Table permissions (full DML)
GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO sysadmin;

-- 8. Default privileges for future tables
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO sysadmin;