-- schemas permission
-- grant usage permission

-- grant all of the available for the object's type.
GRANT ALL ON SCHEMA :API_SCHEMA TO :DATABASE_SERVICE_USER_ROLE;

-- grant all available privileges
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA :API_SCHEMA TO :DATABASE_SERVICE_USER_ROLE;

-- It will have read/write/update/delete rights on its tables.
--GRANT ALL ON :API_SCHEMA."sign" TO :DATABASE_SERVICE_USER_ROLE ;