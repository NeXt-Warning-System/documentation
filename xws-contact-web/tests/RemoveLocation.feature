Feature: Remove location

    As a citizen that no longer wants to register to get warnings
    I need to tell the Organisation which location I want to remove 
    So they can stop sending warnings to me

    Happy path :)

    Scenario: Remove location 
        Given the 'YourAccount' screen is displayed
        When I select 'Remove' next to a location
        And I confirm removal of the location
        Then the location is removed from the account
        And the 'YourAccount' screen is displayed      

    Scenario: Remove only location 
        Given the 'YourAccount' screen is displayed
        When I select 'Remove' next to the only location
        And I confirm removal of the location
        Then the location is removed from the account
        And my contact is no longer registered to receive warning information 

    :(

