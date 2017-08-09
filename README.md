# CSV Import App

This test application allows the user to import users to it from a csv file.

### Usage
***
##### Clone the repo
##### Install gems
```bundle```
##### Generate the figaro files
```bundle exec figaro install ```
##### Set the database environment variables
```
development:
  db_password: 
test:
  db_password:
```
##### Setup the database
```rails db:setup```

##### Run the server

```rails s```
### Tests
***
The application uses Rspec and Capybara to run the test. Just run the command ```rspec``` to run all the tests.