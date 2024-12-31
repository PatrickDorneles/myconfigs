#!/bin/bash

POSTGRES_CONTAINER_NAME="postgres_container"

echo "🔍 Checking and freeing port"
fpgp

echo "🏁 Starting postgres"
container=$(docker start $POSTGRES_CONTAINER_NAME)

echo "🐘 Container $container started"%
