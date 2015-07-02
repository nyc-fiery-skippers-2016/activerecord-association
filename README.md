# AR Associations Drill:  Hotels

## Summary
This challenge is a drill to work with [Active Record associations][RailsGuides Associations].  We'll be working with [`:belongs_to`][belongs_to], [`:has_many`][has_many], and [`:has_one`][has_one] associations.  We'll practice breaking Active Record conventions and passing options like `:class_name`, `:foreign_key`, `:through`, and `:source` when declaring associations.

![](hotels_schema.png)

*Figure 1*. Schema design for this challenge.

We'll focus on writing associations in this challenge, but let's imagine that we're building a full application that allows for booking hotel rooms. Hotels register their rooms with our application, and users can book the hotels' rooms.  We won't worry about booking dates and other real-world details.  We just want to focus on how we can association our models with each other.
 
When our associations have been written, we'll be able to answer the following questions.

*For a User ...*

1. Which bookings were made by the user?
2. Which rooms has the user booked?
3. At which hotels has the user booked a room?


*For a Hotel ...*

1. Which rooms are at the hotel?
2. Which bookings have been made at the hotel?
3. Which guests have booked rooms at the hotel?

*For a Room ...*

1. In which hotel is the room found?
2. Which bookings are for the room?

*For a Booking ...*

1. For which guest is the booking?
2. For which room is the booking?
3. For which hotel is the booking?

## Releases

### Pre-release:  Orienting to the Environment

We have a test suite that will guide us through the challenge.  The tests can be run through the default rake task.  Through the error messages returned by the tests, we can build our application one step at a time: make the next error go away.

In addition to a rake task for running the specs, there are the normal rake tasks for working with the database (`db:drop`, `db:create`, `db:migrate`, etc.) and tasks for generating empty models and migrations.

### Release 0:  Work Through the Tests

At the beginning of the challenge, there will be many failing tests.  We'll use the failing tests to drive the development of our application.  The tests will lead us to create our models, update our database schema, and write our model's associations.

This challenge is complete when all of the tests pass.

## Conclusion

In this challenge our goal was to develop a database schema to support the desired behaviors of an application and to write some more advanced Active Record associations.  After completing this challenge, we should have a better handle on when to use the different association types (e.g., belongs_to vs. has_many), the naming conventions around Active Record associations (e.g., what classes does Active Record expect to find) and how to break those conventions, and how to use a join model to associate two other models with each other.

[belongs_to]: http://apidock.com/rails/ActiveRecord/Associations/ClassMethods/belongs_to
[has_many]: http://apidock.com/rails/v4.2.1/ActiveRecord/Associations/ClassMethods/has_many
[has_one]: http://apidock.com/rails/v4.2.1/ActiveRecord/Associations/ClassMethods/has_one
[RailsGuides Associations]: http://guides.rubyonrails.org/association_basics.html

