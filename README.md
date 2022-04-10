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
#### 2. Сopy *database_example.yml* to *database.yml*
Path to database_example.yml.
```bash
config/database.yml
```
#### 3. Substitute the settings of the local user Postgres
If you need to create:
```bash
sudo su - postgres
psql
CREATE ROLE your_user WITH SUPERUSER CREATEDB CREATEROLE LOGIN ENCRYPTED PASSWORD 'your_password';
```

#### 4. Setup and migrate the database
Run the following commands to setup and migrate the database.
```bash
rails db:setup
rails db:migrate
```
#### 5. Start the Rails servere

```bash
bin/rails server
```
And now you can visit the site with the URL http://127.0.0.1:3000/

