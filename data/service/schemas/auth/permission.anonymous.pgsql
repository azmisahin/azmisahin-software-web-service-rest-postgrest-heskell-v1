-- schemas permission
-- grant usage permission

-- the SQL standard provides for a privilege on other kinds of objects: character sets, collations, translations.
GRANT USAGE ON SCHEMA "auth" TO :DATABASE_SERVICE_ANONYMOUS_ROLE;