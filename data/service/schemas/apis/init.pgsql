-- schemas list
-- create apis schema
CREATE SCHEMA apis;
-- determines which table is meant by following a search path, which is a list of schemas to look up
SET
    search_path TO apis;

-- include relative
\ir tables/init.pgsql;

\ir views/init.pgsql;