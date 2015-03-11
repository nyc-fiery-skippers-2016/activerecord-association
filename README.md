# AR Associations Drill:  Hotels

## Summary

In this challenge, we are presented with a description of a simplified hotel booking system.  From this desription, we will need to derive a database schema and the corresponding models.  We're going to ignore creating a user interface for the system.  While we will need to design a database schema to support the desired functionality, the main goal of this challenge is to practice writing Active Record associations.

We'll have the opportunity to practice advanced Active Record techniques, including modeling a many-to-many relationship using a join model and using more meaningful names for associations (i.e., breaking naming conventions).

The following materials should prove helpful, if it's unclear how to provide options when declaring an association (e.g., `:class_name`, `:foreign_key`, `:through`).

* [`belongs_to`](http://apidock.com/rails/ActiveRecord/Associations/ClassMethods/belongs_to)
* [`has_many`](http://apidock.com/rails/ActiveRecord/Associations/ClassMethods/has_many)


### Description of the Hotel Booking System

Tests have been written to guide you through this challenge.  From the tests, you should be able to deduce the proper database schema and associations.

When all the tests pass, you will be able to answer the following questions.


*For a User ...*

1. What is the user's name?
2. How many bookings does a user have?
3. Which rooms has a user booked?
4. At which hotels has a user booked a room?


*For a Hotel ...*

1. What is the hotel's name?
2. How many rooms does a hotel have?
3. How many reservations it has?
4. Which guests have booked rooms at the hotel?

*For a Room ...*

1. What is the nightly rate?
2. What is the room number?
3. In which hotel is a room found?

*For a Booking ...*

1. For which guest is the booking?
2. For which room is the booking?
3. At which hotel has the room been booked?

## Releases

### Pre-release:  Orienting to the Environment

We have a test suite that will guide us through the challenge.  The tests can be run through the default rake task—from the command line, run `rake`.  Through the error messages returned by the tests, we can build our application one step at a time: make the next error go away.

In addition to a rake task for running the specs, there are the normal rake tasks for working with the database (`db:drop`, `db:create`, `db:migrate`, etc.) and tasks for generating empty models and migrations.

### Release 0:  Work Through the Tests

At the beginning of the challenge, there will be many failing tests.  We'll use the failing tests to drive the development of our application.  The tests will lead us to update both our database schema and our model's associations.

This challenge is complete when all of the tests pass.

## Conclusion

In this challenge our goal was to develop a database schema to support the desired behaviors of an application and to write some more advanced Active Record associations.  After completing this challenge, we should have a better handle on when to use the different association types (e.g., belongs_to vs. has_many), the naming conventions around Active Record associations (e.g., what classes does Active Record expect to find) and how to break those conventions, and how to use a join model to associate two other models with each other.