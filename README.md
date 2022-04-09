# Getting started

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

### Requirements

- Ruby 2.7.2
- Ruby on Rails 6.1.4
- PostgreSQL 12.9

### Installation

##### 1. Cloning a repository
```bash
git clone https://github.com/pavry/pharmacy
```
##### 2. *Сopy database_example.yml* to *database.yml*
```bash
config/database.yml
```
##### 3. Substitute the settings of the local user Postgres

##### 4. Create and setup the database
```bash
rails db:setup
rails db:migrate
```
##### 5. Start the Rails servere

```bash
bin/rails server
```
And now you can visit the site with the URL http://127.0.0.1:3000/

