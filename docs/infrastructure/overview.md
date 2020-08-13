#  ZeroCool

### Overview 
ZeroCool is the external server hosted at Hetzner and houses the majority of the tech infrastructure for the hackspace including

 1. Members System - https://members.hacman.org.uk 
 2. Main Website - https://www.hacman.org.uk
 3. Moodle (Training/Induction System) - https://moodle.hacman.org.uk
 4. Wiki (Archive) https://wiki.hacman.org.uk
 5. Forum (Discourse) https://list.hacman.org.uk
 6. Helpdesk https://help.hacman.org.uk
 7. Database Server (MySQL) 

 Setup by Rossy in November 2018 this contains the heart of our infrastructure
 
### Reverse Proxy 

The server is setup with a reverse proxy that uses automatic configuration to set the forwarding of the sub domain to the correct docker instance rathr than manually needing configured. This is based on the following docker file https://github.com/nginx-proxy/nginx-proxy.git and the setup process is detailed [here](https://docs.hacman.org.uk/infrastructure/nginx)

### Web Servers
Each webserver with the exception of discourse is based on https://github.com/sprintcube/docker-compose-lamp/tree/7.2.x](https://github.com/sprintcube/docker-compose-lamp/tree/7.2.x) with amended docker-compose.yml files to work with the reverse proxy including removing the mysql, phpmyadmin and redis installs. Each webserver has a .env file which contains certain environment settings.

Each webserver can be connected to via ssh from within Zerocool using the command
 

    docker exec –it container id (run docker-ps to find this) /bin/bash

#### Sample Docker Compose file

Example of the Docker Compose File (in this instance it was for the main site) can be found below alongside a copy of the .env file

    version: '3.6'
    
    services:
    
    nginx:
    
    image: nginx:latest
    
    container_name: wordpress-website
    
      
    
    volumes:
    
    - ./nginx:/etc/nginx/conf.d
    
    - ./logs/nginx:/var/log/nginx
    
    - ./wordpress:/var/www/html
    
    - ./certs:/etc/letsencrypt
    
    - ./certs-data:/data/letsencrypt
    
    links:
    
    - wordpress
    
    restart: always
    
    environment:
    
    VIRTUAL_HOST: www.hacman.org.uk,hacman.org.uk
    
    VIRTUAL_PORT: 80
    
    LETSENCRYPT_HOST: www.hacman.org.uk,hacman.org.uk
    
    LETSENCRYPT_EMAIL: REMOVED
    
    expose:
    
    - 80
    
      
    
    wordpress:
    
    image: wordpress:php7.2-fpm
    
    container_name: wordpress
    
    volumes:
    
    - ./wordpress:/var/www/html
    
    environment:
    
    - WORDPRESS_DB_NAME=REMOVED
    
    - WORDPRESS_TABLE_PREFIX=REMOVED
    
    - WORDPRESS_DB_HOST=REMOVED
    
    - WORDPRESS_DB_USER=REMOVED
    
    - WORDPRESS_DB_PASSWORD=REMOVED
    
    restart: always
    
    networks:
    
    default:
    
    external:
    
    name: nginx-proxy

#### Sample .env file

    DOCUMENT_ROOT=./www
    VHOSTS_DIR=./config/vhosts
    APACHE_LOG_DIR=./logs/apache2
    PHP_INI=./config/php/php.ini
    MYSQL_DATA_DIR=./data/mysql
    MYSQL_LOG_DIR=./logs/mysql

### Mysql Server

The Mysql server runs Mysql version 5.7 
Direct Database access is only available through an SSH Tunnel 
Internal IP for the Database Server is REMOVED
Currently there is one MYSQL server with multiple databases within it and different user(s) per database

### Members (https://members.hacman.org.uk)
This is a forked version of Build Brighton Membership System and can be found on github. Setup is fairly simple and requires a webserver running php with composer and larvell installed. Permissions may need to be edited for /storage and /bootstrap/cache for the install to work.

Apache Vhost needs to be configured with /members/public as the document root but /members needs to be accessible to apache

You also need a .env file within the members directory

Buddy.works is used to run the member system billing script that requires to be run each day to bill members. 

### Moodle (https://moodle.hacman.org.uk)
Standard moodle install, uses external database authentication to sync login with the membership system.

### The Bikeshed aka the Forum (https://list.hacman.org.uk)

Standard Discourse install operates on a seperate ip to the rest of the server 

### Main Website (https://www.hacman.org.uk)

Public Facing Website based on wordpress with avada theme. Members have editing privledges to the website to update it 

### Wiki (Archived) (https://wiki.hacman.org.uk)

Mediawiki Install – Requires a separate login and will shortly be in archived

### Helpdesk (https://help.hacman.org.uk)

Helpdesk Ticketing system for teams and sub committees to use to manage requests, emails etc based on OS ticket (Login is restricted to members of teams and subcommittees)

### SMTP Server 

Until recently this was hosted with mailgun for free however due to the introduction of charges for that it we now currently use a mixture of Amazon Simple Email Service and smtp2go and is used for sending transactional email from each of the systems above

### SSH

The Zerocool server is resticted to ssh access for security and GDPR reasons this is restricted to a number of key people only

### Status

We use uptimerobot to monitor each server application including the space internet itself, the systems can be checked using the status page at https://status.hacman.org.uk

### DNS Managmeent 

All DNS management is done via cloudflare 

### Backups

The Database server is backup on a daily basis using sqlbak to a dedicated google drive
Backups are stored for 30 days 

Daily File Backups are done and stored on google drive, these are kept for 2 days (space limitations)


