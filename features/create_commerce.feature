Feature: Create Commerce

    Rule: A Commerce must be created by an Admin
        Scenario: Create a Commerce as an Admin
            Given 'Peter' is an Admin
            When create a Commerce
            Then ensure Commerce is created

    Rule: A Commerce name size must be between 3 and 80 characters
        Scenario: Can't create a Commerce lacking name size rule
            Given 'Andres' is an Admin
            And a Commerce named 'at'
            When create a Commerce
            Then the notification should be 'couldn't be created due to incorrect size of name'

        Scenario: Create a Commerce fulfilling the name size rule
            Given 'Andres' is an Admin
            And a Commerce named 'Dominos'
            When create a Commerce
            Then ensure Commerce is created

    Rule: A Commerce must be registered on SIC
        Scenario: Can't create a Commerce not registered on SIC
            Given 'Andres' is an Admin
            And a Commerce named 'San andresitos SA'
            And 'San andresitos SA' isn't on SIC
            When create a Commerce
            And check 'San andresitos SA' on SIC
            Then the notification should be 'couldn't be created because Commerce wasn't found on SIC'

        Scenario: Create a Commerce registered on SIC
            Given 'Andres' is an Admin
            And a Commerce named 'Papa johns'
            And 'Papa johns' is on SIC
            When create a Commerce
            And check 'Papa johns' on SIC
            Then ensure Commerce is created

    Rule: A Commerce must have certain fields
        Scenario: can't create a Commerce lacking country
            Given 'Maria' is an Admin
            And a Commerce doesn´t have a 'country'
            When create a Commerce
            Then the notification should be 'Commerce couldn't be created because the country is requiried'

        Scenario: created a Commerce with data
            Given 'Pedro' is an Admin
            And a Commerce has all data
            When create a Commerce
            Then ensure Commerce is created
