# mongit-back

Simple script to save docker container mongoDB backup in a github account

# Installation

Container should be called mongo, otherwise change the backup.sh file to set it according to your requirments.

## If you fork this project directly, remember to do it private to do not exposure your backups

It's only needed to execute `./install.sh`

There are a few environment variables mandatories to have the backup service running.

- **MONGO_INITDB_ROOT_USERNAME** MongoDB username with mongodump permissions
- **MONGO_INITDB_ROOT_PASSWORD** MongoDB password with mongodump permissions
- **MONGO_INITDB_DATABASE** MongoDB database to do the backup
