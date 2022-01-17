<h1 align="center">Quiz Backend</h1>

![Quiz](https://startupbonsai.com/wp-content/uploads/2020/07/Best-Online-Quiz-Makers-Social.jpg)

<p align="center">Rails API application.</p>

---

### Table of Content

- [Description](#description)
- [Specification](#specification)
  - [Backend](#backend)
    - [Versioning](#versioning)
    - [Database](#database)
- [Installation](#installation)
- [How to use this app](#how-to-use-this-app)
- [Challanges](#challanges)
- [Future upgrades](#future-upgrades)
- [Bugs](#bugs)
- [Credits](#credits)
- [License](#license)

---

## Description

This backeend part of application. **Backend:** is build in Ruby on Rails as a new API and **Frontend:** Single Page Application written in JavaScript. It uses **fake** authentication to welcome our users and gives them option to check their knowledge in Ruby programming language. All tries will be displayed in the order they've been created or we can sort them by the percentage of correct answers. Each take can be deleted if use wishes and the number of takes is unlimited.

---

## Specification

### Backend

The server side of this application if build with Ruby on Rails and postgreSQL as database only as API(no view files).

<spam style="color:yellow">_NOTE: command to run: `rails new <app_name> --database=postgresql --api`._ </spam>

#### Versioning

- Ruby: `ruby 2.6.1p33`
- Ruby on Rails: `Rails 6.1.4.1`

<spam style="color:yellow">_NOTE: This can be checked by running `ruby -v ` and `rails -v ` in root folder of this application._ </spam>

#### Database

Database used for this application is postgreSQL.

<details>
<summary>See database schema</summary>

![Database Schema](./Quiz_app%20final%20db%20setup.jpeg)
_<p align="center"> Database schema </p>_

</details>
___

## Installation

1.  Backend [(github link)](https://github.com/zicna/quiz_backend.git 'backend repo')

- fork this repo
- clone it to your local environment
- terminal commands to setup backend:

```
bundle install
rails db:create
rails db:migrate
rails db:seed
rails server
```

<spam style="color:yellow">NOTE: We can check API we are getting from server by navigating to `http://localhost:3000/users` </spam>

---

## How to use this app

- After all steps from **Installation** are done usrs can navigate to `http://localhost:3000/users` to see API provided by server
- The rest of application is on frontend part which we can check [here](https://github.com/zicna/quiz_frontend).

<spam style="color:yellow">*NOTE: Here is a good place to point out that as we know *seed.rb\* file is used for dummy date during our development and test phases but we will require you to run `rails seed` command and it will give you some data you do not really need (such as 3,4 users with their results) but it will also give you some essential ones for this app to work: quiz, questions, and options for those questions. </spam>

---

## Challanges

- database setup, so users can have multiple takes
- API structure, methods and scopes, all data manipulations would be done in the backend
- sending data of selected anwers back to the server side.

---

## Future upgrades

- [x] Fix readme.md file
- [ ] Adding user validation

---

## Bugs

1. Once `new take` is created if we hit refresh take will stay with nothing selected therefore it will appear as the user had `take` with no correct answers

---

## Credits

Great help for this app to see light of the day goes to [Candice Peaters](https://github.com/candicelizabeth). Thank you!

---

## License

This application is avaiable as open source under the terms of the [MIT License](LICENSE).

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
