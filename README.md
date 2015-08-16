Introduction

This howto guide in the deploy the MariaDB on Ubuntu 14.04
Setting up MariaDB
Step 1: Setting up
# docker-mariadb
MariaDB Ubuntu 14.04

Example usage:
$ docker run -d -p 3306:3306 -e MARIADB_ROOT_PASSWORD=pass@word01 josemhb/mariadb
Environment variables

    MARIADB_ROOT_PASSWORD: The password for the root user. Defaults to a blank password
    MARIADB_DATABASE: A database to automatically create. If not provided, does not create a database.
    MARIADB_USER: A user to create that has access to the database specified by MYSQL_DATABASE.
    MARIADB_PASSWORD: The password for MYSQL_USER. Defaults to a blank password.


