Feature: Create Commerce

    Rule: A Commerce must be created by an Admin
        Scenario: Create a Commerce as an Admin
            Given 'Peter' is an Admin
            When create a Commerce
            Then ensure Commerce is created

    Rule: A Commerce name size must be between 3 and 80 characters
        Scenario: Can't create a Commerce lacking name size rule
            Given 'Andres' is an Admin
            When create a Commerce called 'at'
            Then the notification should be 'couldn't be created due to incorrect size of name'

        Scenario: Create a Commerce fulfilling the name size rule
            Given 'Andres' is an Admin
            When create a Commerce called 'Dominos'
            Then ensure Commerce is created

    Rule: A Commerce must be registered on SIC
        Scenario: Can't create a Commerce not registered on SIC
            Given 'Andres' is an Admin
            And 'San andresitos SA' isn't on SIC
            When create a Commerce called 'San andresitos SA'
            And check 'San andresitos SA' on SIC
            Then ensure 'San andresitos SA' doesn't exist on SIC
            And the notification should be 'couldn't be created because Commerce wasn't found on SIC'

        Scenario: Create a Commerce registered on SIC
            Given 'Andres' is an Admin
            And 'Papa johns' is on SIC
            When create a Commerce called 'Papa johns'
            And check 'Papa johns' on SIC
            Then ensure 'Papa johns' exists on SIC
            And ensure Commerce is created

