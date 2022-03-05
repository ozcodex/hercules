Hercules
========

Table of Contents
---------
0. [Why this Fork?](#why-this-fork)
1. [What is Hercules?](#what-is-hercules)
2. [Prerequisites](#prerequisites)
3. [Installation](#installation)
4. [Troubleshooting](#troubleshooting)
5. [Helpful Links](#helpful-links)
6. [More Documentation](#more-documentation)


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
      - `apt-get install gcc make libmysqlclient-dev zlib1g-dev libpcre3-dev mysql-server git`
  3. Configure the MariaDB server and start it.
  4. Connect to the MySQL server as root:
      - Create a database (hercules): `CREATE DATABASE hercules;`
      - Create a user (hercules): `CREATE USER 'hercules'@'localhost' IDENTIFIED BY 'password';`.
      - Give permissions (GRANT SELECT,INSERT,UPDATE,DELETE) to the user: `GRANT SELECT,INSERT,UPDATE,DELETE ON hercules.* TO 'hercules'@'localhost';`
  5. Connect to the MySQL server as the new user:
      - Import the .sql files in /sql-files/ into the new database.
  6. Enter the Hercules directory and configure/build Hercules
      - `./configure`
      - `make clean && make sql` (on FreeBSD, replace `make` with `gmake`)
  7. Start the three servers login-server, char-server, map-server.

## Troubleshooting
---------------

If you're having problems with starting your server, the first thing you should
do is check what's happening on your consoles. More often than not, all support
issues can be solved simply by looking at the error messages given.

Examples:

* You get an error on your map-server_sql that looks something like this:

```
[Error]: npc_parsesrcfile: Unable to parse, probably a missing or extra TAB in file 'npc/custom/jobmaster.txt', line '17'. Skipping line...
        * w1=prontera,153,193,6 script
        * w2=Job Master
        * w3=2_F_MAGICMASTER,{
        * w4=
```

  If you look at the error, it's telling you that you're missing (or have an
  extra) TAB.  This is easily fixed by looking at this part of the error:
  `* w1=prontera,153,193,6 script`.
  If there was a TAB where it's supposed to be, that line would have
  `prontera,153,193,6` at w1 and `script` at w2. As there's a space instead of a
  TAB, the two sections are read as a single parameter.

* You have a default user/password warning similar to the following:

```
[Warning]: Using the default user/password s1/p1 is NOT RECOMMENDED.
[Notice]: Please edit your 'login' table to create a proper inter-server user/password (gender 'S')
[Notice]: and then edit your user/password in conf/map-server.conf (or conf/import/map_conf.txt)
```

  Relax. This is just indicating that you're using the default username and password. To
  fix this, check over the part in the installation instructions relevant to the `login` table.

* Your Map Server says the following:

```
[Error]: make_connection: connect failed (socket #2, error 10061: No connection could be made because the target machine actively refused it.)!
```

  If this shows up on the map server, it generally means that there is no Char
  Server available to accept the connection.

## Helpful Links
-------------

The following list of links point to various help files within the repository,
articles or pages on the Wiki or topics within the Hercules forum.

* Hercules Forums:
  http://herc.ws/board/

* Hercules Wiki:
  http://herc.ws/wiki/Main_Page

* Git Repository URL:
  https://github.com/HerculesWS/Hercules

* Hercules IRC Channel:
  Network: `irc.rizon.net`
  Channel: `#Hercules`

## More Documentation
------------------

Hercules has a large collection of help files and sample NPC scripts located in
/doc/

### Scripting
It is recommended to look through /doc/script_commands.txt for help, pointers or
even for ideas for your next NPC script. Most script commands have a usage
example.

### `@commands`
In-game, Game Masters have the ability to use Atcommands (`@`) to control
players, create items, spawn mobs, reload configuration files and even control
the weather.  For an in-depth explanation, please see /doc/atcommands.txt

### Permissions
The Hercules emulator has a permission system that enables certain groups of
players to perform certain actions, or have access to certain visual
enhancements or in-game activity. To see what permissions are available, they
are detailed in /doc/permissions.md

### Others
There are more files in the /doc/ directory that will help you to create scripts
or update the mapcache, or even explain how the job system and item bonuses
work. Before posting a topic asking for help on the forums, we recommend that
all users take the time to look over this directory.
