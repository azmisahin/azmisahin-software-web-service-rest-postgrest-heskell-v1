-- users
-- create users

\set DATABASE_SERVICE_AUTHENTICATION_ROLE `echo ${DATABASE_SERVICE_AUTHENTICATION_ROLE}`
\set DATABASE_SERVICE_ANONYMOUS_ROLE `echo ${DATABASE_SERVICE_ANONYMOUS_ROLE}`
\set DATABASE_SERVICE_USER_ROLE `echo ${DATABASE_SERVICE_USER_ROLE}`
\set SECRET_KEY `echo ${SECRET_KEY}`
\set API_SCHEMA `echo apis`

-- define a new database role

-- It will have read/write/update/delete rights on SCHEMA and its tables.
CREATE ROLE :DATABASE_SERVICE_USER_ROLE ;
-- those who have access to the API but will not be able to access read/write/delete.
CREATE ROLE :DATABASE_SERVICE_ANONYMOUS_ROLE ;
-- created with the database and configured to have very limited access to the database.
CREATE ROLE :DATABASE_SERVICE_AUTHENTICATION_ROLE WITH NOINHERIT LOGIN PASSWORD :'SECRET_KEY';

-- define access privileges
GRANT :DATABASE_SERVICE_USER_ROLE TO :DATABASE_SERVICE_AUTHENTICATION_ROLE;
GRANT :DATABASE_SERVICE_ANONYMOUS_ROLE TO :DATABASE_SERVICE_AUTHENTICATION_ROLE;

-- the SQL standard provides for a privilege on other kinds of objects: character sets, collations, translations.
GRANT USAGE ON SCHEMA :API_SCHEMA TO :DATABASE_SERVICE_ANONYMOUS_ROLE;

-- grant all of the available for the object's type.
GRANT ALL ON SCHEMA :API_SCHEMA TO :DATABASE_SERVICE_USER_ROLE;

-- grant all available privileges
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA :API_SCHEMA TO :DATABASE_SERVICE_USER_ROLE;
