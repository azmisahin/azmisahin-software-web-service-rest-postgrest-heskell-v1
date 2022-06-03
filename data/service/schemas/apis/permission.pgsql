-- schemas permission
-- grant usage permission

-- the SQL standard provides for a privilege on other kinds of objects: character sets, collations, translations.
GRANT USAGE ON SCHEMA :API_SCHEMA TO :DATABASE_SERVICE_ANONYMOUS_ROLE;

-- grant all of the available for the object's type.
GRANT ALL ON SCHEMA :API_SCHEMA TO :DATABASE_SERVICE_USER_ROLE;

-- grant all available privileges
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA :API_SCHEMA TO :DATABASE_SERVICE_USER_ROLE;