# Getting started

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

### Requirements

- Ruby 2.7.2
- Ruby on Rails 6.1.4
- PostgreSQL 12.9

### Installation

#### 1. Cloning a repository
```bash
git clone https://github.com/pavry/pharmacy
```
#### 2. Сhange *database_example.yml* to *database.yml*
Rename the database_example.yml into database.yml and add username and password key to the default group.
```bash
Path to database_example.yml: /config/database_example.yml
```
#### If you need to create a username and password
Substitute the settings of the local user Postgres.
```bash
sudo su - postgres
psql
CREATE ROLE your_user WITH SUPERUSER CREATEDB CREATEROLE LOGIN ENCRYPTED PASSWORD 'your_password';
```

#### 3. Create and migrate the database
Run the following commands to create and migrate the database.
```bash
rails db:setup
rails db:migrate
```
#### 4. Start the Rails servere

```bash
bin/rails server
```
And now you can visit the site with the URL http://127.0.0.1:3000/
