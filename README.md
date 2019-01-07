## CA Mailboxer 2018

Code base for week 5 challenge - Working with legacy code by adding feature tests for compose message, delete message, reply to message and sign up page.

[Deployed site](https://polar-brushlands-49351.herokuapp.com/)

## Technology Stack

- Ruby on Rails
- Cucumber for feature testing

### User Stories

```
As a user
In order sign up to CA Mailboxer
I want to be able to visit a sign up page and create an account

As a User
In order to send a message to someone
I want to be able to compose a message

As a user
In order to send a response
I want to be able to reply to a message in my inbox

As a user
In order to remove messages from my inbox
I want be able to delete and move my message to the trash bin
```

### Installation
Run the following commands in the terminal
- bundle install - for install dependencies
- rails db:create db:migrate - for creating and migrating database
- rails server - for local server (localhost:3000)
- cucumber - for testing