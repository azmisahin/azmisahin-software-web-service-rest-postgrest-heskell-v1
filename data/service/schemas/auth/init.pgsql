-- schemas list
-- create auth schema
CREATE SCHEMA auth;
-- determines which table is meant by following a search path, which is a list of schemas to look up
SET
    search_path TO auth;

-- include relative

\ir types/init.pgsql;

\ir functions/init.pgsql;

\ir tables/init.pgsql;

\ir views/init.pgsql;

\ir permission.pgsql;