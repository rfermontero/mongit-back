date=$(date '+%Y-%m-%d-%H%M%S')
docker exec -u root -d mongo bash -c "mongodump --authenticationDatabase admin --username $MONGO_INITDB_ROOT_USERNAME --password $MONGO_INITDB_ROOT_PASSWORD --db $MONGO_INITDB_DATABASE --gzip" > $date-backup.bz2
docker exec -u root -d mongo bash -c "rm $date-backup.bz2"
git add .
git commit -am "$date Backup "
git push
