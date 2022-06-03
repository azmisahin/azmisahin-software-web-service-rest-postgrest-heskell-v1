/**
 * @file init.sql
 * @author Azmi ŞAHİN (azmisahin@outlook.com)
 * @brief database modeling, normalization, fragmentation, testing data service application for postgresql.
 * @version 0.1.7
 * @date 2022-01-01
 *
 * @copyright Copyright (c) 2022
 */

-- Entry point for all sql files.
-- If you would like to do additional initialization in an image derived from this one,
-- add one or more *.sql, *.sql.gz, or *.sh scripts under /docker-entrypoint-initdb.d
-- (creating the directory if necessary).
-- After the entrypoint calls initdb to create the default postgres user and database,
-- it will run any *.sql files, run any executable *.sh scripts,
-- and source any non-executable *.sh scripts found in that directory to do further initialization before starting the service.

-- ref: https://www.postgresql.org/docs/current/sql-createextension.html
-- ref: https://www.postgresql.org/docs/current/uuid-ossp.html
-- ref: https://www.postgresql.org/docs/current/datatype-uuid.html
CREATE EXTENSION IF NOT EXISTS "uuid-ossp" schema public;

-- start a transaction block
-- BEGIN initiates a transaction block, that is,
-- all statements after a BEGIN command will be executed in a single transaction until an explicit COMMIT or ROLLBACK is given
BEGIN;
-- include relative
\ir schemas/init.pgsql;

COMMIT;