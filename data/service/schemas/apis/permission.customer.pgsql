-- schemas permission
-- grant usage permission

-- grant all of the available for the object's type.
GRANT ALL ON SCHEMA "configurations" TO :DATABASE_SERVICE_USER_ROLE;

-- grant all available privileges
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA "configurations" TO :DATABASE_SERVICE_USER_ROLE;

-- It will have read/write/update/delete rights on its tables.
GRANT ALL ON "configurations"."cultures" TO :DATABASE_SERVICE_USER_ROLE ;
GRANT ALL ON "configurations"."currencies" TO :DATABASE_SERVICE_USER_ROLE ;
GRANT ALL ON "configurations"."dictionaries" TO :DATABASE_SERVICE_USER_ROLE ;

-- grant all of the available for the object's type.
GRANT ALL ON SCHEMA "accounts" TO :DATABASE_SERVICE_USER_ROLE;

-- grant all available privileges
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA "accounts" TO :DATABASE_SERVICE_USER_ROLE;

-- It will have read/write/update/delete rights on its tables.
GRANT ALL ON "accounts"."users" TO :DATABASE_SERVICE_USER_ROLE ;
GRANT ALL ON "accounts"."authentications" TO :DATABASE_SERVICE_USER_ROLE ;
GRANT ALL ON "accounts"."emails" TO :DATABASE_SERVICE_USER_ROLE ;
GRANT ALL ON "accounts"."phones" TO :DATABASE_SERVICE_USER_ROLE ;
GRANT ALL ON "accounts"."persons" TO :DATABASE_SERVICE_USER_ROLE ;
GRANT ALL ON "accounts"."passwords" TO :DATABASE_SERVICE_USER_ROLE ;
GRANT ALL ON "accounts"."roles" TO :DATABASE_SERVICE_USER_ROLE ;
GRANT ALL ON "accounts"."user_roles" TO :DATABASE_SERVICE_USER_ROLE ;
GRANT ALL ON "accounts"."tokens" TO :DATABASE_SERVICE_USER_ROLE ;