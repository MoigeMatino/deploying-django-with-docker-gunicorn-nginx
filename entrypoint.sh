#!/bin/sh
# to ensure that postgresql is healthy before running migrations
if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
        sleep 0.1
    done

    echo "PostgreSQL started"
fi


# Start server
echo "Starting server..."

exec "$@"
