Hercules
========

Table of Contents
---------
1. [Why this Fork?](#why-this-fork)
2. [What is Hercules?](#what-is-hercules)
3. [Prerequisites](#prerequisites)
4. [Installation](#installation)
5. [Custom Features](#custom-features)


## Why this Fork?
-----------------
This fork was initially done by my brother and myself to have a LAN version
of this game to play with our cousins and friends, but since we are few foes
and this game is intended to be massive we need to make modifications and
customizations to the  game, waiting to track and keep those changes we 
decided to keep as a github repository.

## What is Hercules?
-----------------
Hercules is a collaborative software development project revolving around the
creation of a robust Massively Multiplayer Online Role-Playing Game (MMORPG)
server package. Written in C, the program is very versatile and provides NPCs,
warps and modifications. The project is jointly managed by a group of
volunteers located around the world as well as a tremendous community providing
QA and support. Hercules is a continuation of the original Athena project.

## Prerequisites
-------------
Before installing Hercules, you will need to install certain tools and applications.

#### Unix/Linux/BSD 
  - git
  - gcc or clang (version 4.5 or newer, recommended 5.0 or newer)
  - GNU make
  - MySQL (`mysql-server`) or MariaDB
  - libmysqlclient (`mysql-devel`)
  - zlib (`zlib-devel`)
  - libpcre (`pcre-devel`)
  - *Optional dependencies for development only*
    - perl (required to rebuild the HPM Hooks and HPMDataCheck)
      - requires the XML::Simple module, which in turn requires libexpat-dev
    - Doxygen (required to rebuild the HPM Hooks and HPMDataCheck)

## Installation
------------

This are te steps we followed to instale the game, comes from the wiki guide:
[Make your RO server in less then 5 minutes](https://herc.ws/board/topic/16607-ragnarok-offline-newbie-pack-2022-make-your-ro-server-in-less-then-5-minutes/)

#### Linux
  1. Install the prerequisites:
      - `apt-get install gcc make libmysqlclient-dev zlib1g-dev libpcre3-dev mariadb-server git`
  3. Configure the MariaDB server and start it.
  4. Connect to the MariaDB server as root:
      - Create a database (hercules): `CREATE DATABASE ragnarok;`
      - Create a user (hercules): `CREATE USER 'ragnarok'@'localhost' IDENTIFIED BY 'evergreen viper crunchy nylon elliptic footgear';`.
      - Give permissions to the user: `GRANT SELECT,INSERT,UPDATE,DELETE ON ragnarok.* TO 'ragnarok'@'localhost';`
  5. Connect to the MariaDB server as the new user:
      - Import the .sql files in /sql-files/ into the new database.
      - `cat sql-files/*.sql | mariadb ragnarok`
  6. Enter the Hercules directory and configure/build Hercules
      - `./configure`
      - `make clean && make sql`
  7. Start the three servers login-server, char-server, map-server.

## Custom Features
------------------

Hunting missions
