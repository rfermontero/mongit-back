#!/bin/bash
source $HOME/.bash_profile
date=$(date '+%Y-%m-%d-%H%M%S')
docker exec mongo sh -c "mongodump --authenticationDatabase admin --username $MONGO_INITDB_ROOT_USERNAME --password $MONGO_INITDB_ROOT_PASSWORD --db $MONGO_INITDB_DATABASE --gzip --archive"
mv backup.gz $date-backup.gz
git add .
git commit -am "$date Backup"
git push