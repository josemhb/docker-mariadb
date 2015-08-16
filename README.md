Introduction
============
This docker deploy the MariaDB 5.5 on Ubuntu 14.04

Example usage:
--------------
$ docker run -d -p 3306:3306 -e MARIADB_ROOT_PASSWORD=password01 josemhb/mariadb
Environment variables

    MARIADB_ROOT_PASSWORD: The password for the root user. Defaults to a blank password
    MARIADB_DATABASE: A database to automatically create. If not provided, does not create a database.
    MARIADB_USER: A user to create that has access to the database specified by MYSQL_DATABASE.
    MARIADB_PASSWORD: The password for MYSQL_USER. Defaults to a blank password.


