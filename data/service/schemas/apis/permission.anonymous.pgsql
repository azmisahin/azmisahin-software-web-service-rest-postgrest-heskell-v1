-- schemas permission
-- grant usage permission

-- the SQL standard provides for a privilege on other kinds of objects: character sets, collations, translations.
GRANT USAGE ON SCHEMA :API_SCHEMA TO :DATABASE_SERVICE_ANONYMOUS_ROLE;

-- those who have access to the API but will not be able to access read/write/delete.
--GRANT SELECT ON :API_SCHEMA."sign" TO :DATABASE_SERVICE_ANONYMOUS_ROLE;