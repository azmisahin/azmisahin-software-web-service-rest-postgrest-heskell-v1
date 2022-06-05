-- schemas permission
-- grant usage permission

-- the SQL standard provides for a privilege on other kinds of objects: character sets, collations, translations.
GRANT USAGE ON SCHEMA "configurations" TO anonymous;

-- those who have access to the API but will not be able to access read/write/delete.
GRANT SELECT ON "configurations"."cultures" TO anonymous;
GRANT SELECT ON "configurations"."currencies" TO anonymous;
GRANT SELECT ON "configurations"."dictionaries" TO anonymous;

-- the SQL standard provides for a privilege on other kinds of objects: character sets, collations, translations.
GRANT USAGE ON SCHEMA "accounts" TO anonymous;

-- those who have access to the API but will not be able to access read/write/delete.
GRANT SELECT ON "accounts"."users" TO anonymous;
GRANT SELECT ON "accounts"."authentications" TO anonymous;
GRANT SELECT ON "accounts"."emails" TO anonymous;
GRANT SELECT ON "accounts"."phones" TO anonymous;
GRANT SELECT ON "accounts"."persons" TO anonymous;
GRANT SELECT ON "accounts"."passwords" TO anonymous;
GRANT SELECT ON "accounts"."roles" TO anonymous;
GRANT SELECT ON "accounts"."user_roles" TO anonymous;
GRANT SELECT ON "accounts"."tokens" TO anonymous;