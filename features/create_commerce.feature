Feature: Create Commerce

    Rule: A Commerce must be created by an Admin
        Scenario: Peter create an Commerce as an Admin
            Given Peter is Admin
            When create a Commerce
            Then sees Commerce created