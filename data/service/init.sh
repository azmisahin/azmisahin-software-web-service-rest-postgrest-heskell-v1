#!/bin/bash

# /**
#  * @file init.sh
#  * @author Azmi ŞAHİN (azmisahin@outlook.com)
#  * @brief database modeling, normalization, fragmentation, testing.
#  * @version 0.1.7
#  * @date 2022-01-01
#  *
#  * @copyright Copyright (c) 2022
#  */

# the script should stop when it encounters an error.
set -e
# Warning: scripts in /docker-entrypoint-initdb.d are only run
# if you start the container with a data directory that is empty;
# any pre-existing database will be left untouched on container startup.
# One common problem is that if one of your /docker-entrypoint-initdb.d scripts fails
# (which will cause the entrypoint script to exit) 
# and your orchestrator restarts the container with the already initialized data directory,
# it will not continue on with your scripts.

echo This is a sample .env file for use in local development.
echo When the new images are built, have your continuous deployment system deploy them to a staging environment.
echo
echo data service initialized
echo ==================================================
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    \ir /docker-entrypoint-initdb.d/init.pgsql;
EOSQL
echo
echo data service migrations
echo ==================================================
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    \ir /docker-entrypoint-initdb.d/init.migrations.pgsql;
EOSQL
echo
echo data service ${ENV}
echo ==================================================
echo
if [ "${ENV}" = "development" ]; then
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    \ir /docker-entrypoint-initdb.d/init.test.pgsql;
EOSQL
echo
echo data service ui
echo ==================================================
echo DATABASE_SERVICE_UI_HOST_PORT      :   "127.0.0.1:${DATABASE_SERVICE_UI_HOST_PORT}"
echo PGADMIN_DEFAULT_EMAIL              :   "${PGADMIN_DEFAULT_EMAIL}"
echo PGADMIN_DEFAULT_PASSWORD           :   "${PGADMIN_DEFAULT_PASSWORD}"
echo
echo data service
echo ==================================================
echo internal network connection    
echo    name                            :   "${APP_NAME}"
echo    connection host name/address    :   127.0.0.1
echo    port                            :   "${DATABASE_SERVICE_HOST_PORT}"
echo    maintenance database            :   "${DATABASE_SERVICE_CATALOG}"
echo    username                        :   "${DATABASE_SERVICE_USER}"
echo    password                        :   "${DATABASE_SERVICE_PASSWORD}"
echo --------------------------------------------------
echo docker network connection    
echo    name                            :   "${APP_NAME}"
echo    connection host name/address    :   "${APP_NAME}"
echo    port                            :   "${DATABASE_SERVICE_APP_PORT}"
echo    maintenance database            :   "${DATABASE_SERVICE_CATALOG}"
echo    username                        :   "${DATABASE_SERVICE_USER}"
echo    password                        :   "${DATABASE_SERVICE_PASSWORD}"
fi
echo
if [ "${ENV}" = "production" ]; then
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    \ir /docker-entrypoint-initdb.d/init.production.pgsql;
EOSQL
fi