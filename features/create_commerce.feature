Feature: Create Commerce
  As an Admin
  I want to create a Commerce
  So that the Store manager can use it

  #Rule: A Commerce must be created by an Admin
  Scenario: Create a Commerce as an Admin
    Given "Peter" is an Admin
    And a Commerce called "Papa Johns"
    When create a Commerce
    Then ensure Commerce is created

  Scenario: Can't create a Commerce already created
    Given "Raul" is an Admin
    And a Commerce called "Papa Johns"
    And Commerce "Papa Johns" is already created
    When  create a Commerce
    Then the notification should be "couldn't be created because Commerce already exists"

  Scenario: Can't create a Commerce not being Admin
    Given "Sara" isn't an Admin
    And a Commerce called "Papa Johns"
    When create a Commerce
    Then the notification should be "couldn't be created because you aren't an Admin"


  #Rule: A Commerce name size must be between 3 and 8 characters
  Scenario: Can't create a Commerce lacking name size Rule
    Given "Andres" is an Admin
    And a Commerce called "at"
    When create a Commerce
    Then the notification should be "couldn't be created due to incorrect size of name"

  Scenario: Create a Commerce fulfilling the name size Rule
    Given "Andres" is an Admin
    And a Commerce called "Dominos"
    When create a Commerce
    Then ensure Commerce is created

  #Rule: A Commerce must be registered on SIC
  Scenario: Can't create a Commerce not registered on SIC
    Given "Andres" is an Admin
    And a Commerce called "San andresitos SA"
    And "San andresitos SA" isn't on SIC
    When create a Commerce
    And check "San andresitos SA" on SIC
    Then the notification should be "couldn't be created because Commerce wasn't found on SIC"

  Scenario: Create a Commerce registered on SIC
    Given "Andres" is an Admin
    And a Commerce called "Papa johns"
    And "Papa johns" is on SIC
    When create a Commerce
    And check "Papa johns" on SIC
    Then ensure Commerce is created

  #Rule: A Commerce must have certain fields
  Scenario: can't create a Commerce lacking country
    Given "Maria" is an Admin
    And the Commerce doesn't have a "country"
    When create a Commerce
    Then the notification should be "Commerce couldn't be created because the country is requiried"

  Scenario: created a Commerce with data
    Given "Pedro" is an Admin
    And the Commerce have all data
    When create a Commerce
    Then ensure Commerce is created
