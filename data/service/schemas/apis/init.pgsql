-- schemas list
-- create apis schema
CREATE SCHEMA apis;
-- determines which table is meant by following a search path, which is a list of schemas to look up
SET
    search_path TO apis;

-- include relative

\ir types/init.pgsql;

\ir functions/init.pgsql;

\ir tables/init.pgsql;

\ir views/init.pgsql;

\ir permission.pgsql;