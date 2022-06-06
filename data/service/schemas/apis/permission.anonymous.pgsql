-- schemas permission
-- grant usage permission

-- the SQL standard provides for a privilege on other kinds of objects: character sets, collations, translations.
GRANT USAGE ON SCHEMA "configurations" TO :DATABASE_SERVICE_ANONYMOUS_ROLE;

-- those who have access to the API but will not be able to access read/write/delete.
GRANT SELECT ON "configurations"."cultures" TO :DATABASE_SERVICE_ANONYMOUS_ROLE;
GRANT SELECT ON "configurations"."currencies" TO :DATABASE_SERVICE_ANONYMOUS_ROLE;
GRANT SELECT ON "configurations"."dictionaries" TO :DATABASE_SERVICE_ANONYMOUS_ROLE;

-- the SQL standard provides for a privilege on other kinds of objects: character sets, collations, translations.
-- GRANT USAGE ON SCHEMA "accounts" TO :DATABASE_SERVICE_ANONYMOUS_ROLE;

-- those who have access to the API but will not be able to access read/write/delete.
-- GRANT SELECT ON "accounts"."users" TO :DATABASE_SERVICE_ANONYMOUS_ROLE;
-- GRANT SELECT ON "accounts"."authentications" TO :DATABASE_SERVICE_ANONYMOUS_ROLE;
-- GRANT SELECT ON "accounts"."emails" TO :DATABASE_SERVICE_ANONYMOUS_ROLE;
-- GRANT SELECT ON "accounts"."phones" TO :DATABASE_SERVICE_ANONYMOUS_ROLE;
-- GRANT SELECT ON "accounts"."persons" TO :DATABASE_SERVICE_ANONYMOUS_ROLE;
-- GRANT SELECT ON "accounts"."passwords" TO :DATABASE_SERVICE_ANONYMOUS_ROLE;
-- GRANT SELECT ON "accounts"."roles" TO :DATABASE_SERVICE_ANONYMOUS_ROLE;
-- GRANT SELECT ON "accounts"."user_roles" TO :DATABASE_SERVICE_ANONYMOUS_ROLE;
-- GRANT SELECT ON "accounts"."tokens" TO :DATABASE_SERVICE_ANONYMOUS_ROLE;