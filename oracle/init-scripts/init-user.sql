-- Create application user
CREATE USER sferp IDENTIFIED BY sferp;

-- Grant privileges
GRANT dba TO sferp;

-- Optionally allow unlimited tablespace
ALTER USER sferp QUOTA UNLIMITED ON USERS;

-- Optionally create schema objects here
-- CREATE TABLE myuser.test (id NUMBER);
