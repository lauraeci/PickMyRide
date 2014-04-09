PickMyRide
==========

PickMyRide group project for PayNearMe Hack Night

Installation:

Install rvm
rvm install 2.1.1
Install developer tools
brew install postgres
make sure postgres is running, if not run it:
pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start
postgres -D /usr/local/var/postgres
psql -d postgres
Trouble shooting postgres:
rm -rf /usr/local/var/postgres
initdb /usr/local/var/postgres

CREATE ROLE rubyhacknight;
create database pickmyride_development;
GRANT ALL PRIVILEGES ON DATABASE pickmyride_development to rubyhacknight;

