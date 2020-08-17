Feature: Create Commerce
  As an Admin
  I want to create a Commerce
  So that the Store manager can use it

    Rule: A Commerce must be created by an Admin
        Scenario: Peter create a Commerce as an Admin
            Given 'Peter' is Admin
            When create a Commerce
            Then ensure Commerce is created

        Scenario: Can't create a Commerce already created
            Given 'Raul' is Admin
            And a Commerce named 'Papa Johns'
            And Commerce 'Papa Johns' is already created
            When  create a Commerce
            Then the notification should be 'couldn't be created because Commerce already exists'

        Scenario: Can't create a Commerce not being Admin
            Given 'Sara' isn't Admin
            And a Commerce named 'Papa Johns'
            When create a Commerce
            Then the notification should be 'couldn't be created because you aren't an Admin'
