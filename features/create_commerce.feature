Feature: Create Commerce

    Rule: A Commerce must be created by an Admin
        Scenario: Peter create an Commerce as an Admin
            Given Peter is Admin
            When create a Commerce
            Then sees Commerce created

    Rule: A Commerce must have certain fields
        Scenario: can't create a Commerce lacking country
            Given 'Maria' is an Admin
            And the Commerce doesn´t have a 'country'
            When create a Commerce
            Then the notification should be 'Commerce couldn't be created because the country is requiried'

        Scenario: created a Commerce with data
            Given 'Pedro' is an Admin
            And the Commerce have all data
            When create a Commerce
            Then ensure Commerce is created

