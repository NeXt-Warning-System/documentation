Feature: Add location

    As a citizen that wants to register to get warnings
    I need to tell the Organisation which location I want to get warnings for 
    So they can send me warnings for my location of interest

    Happy path :)

    Scenario: Choose location via postcode 
        Given the 'FindLocation' search screen is displayed
        When I enter 'WA145QR' into the search field
        Then the Select an address screen is displayed with picklist of addresses linked to 'WA145QR'
        And I can select the correct exact address to continue
        
    Scenario: Show location for postcode 
        Given I select the 'ExactAddress' from the Select an address screen 
        When I click continue 
        And the 'ExactAddress' is in a 'TargetArea'
        Then display 'YourLocationScreen'
        But if 'ExactAddress' is not in a 'TargetArea'
        Then display 'TryAnotherLocation' screen
            
    Scenario: Choose location via Area
        Given the 'FindLocation' search screen is displayed
        When I enter 'Norwich' into the search field
        Then the Select a place name screen is displayed with picklist of places linked to 'Norwich'
        And I can select the correct exact place to continue
        
    Scenario: Show location for place 
        Given I select the 'ExactPlace' from the Select a place screen 
        When I click continue        
        And 'ExactPlace' is in a 'TargetArea'
        Then display 'YourLocationScreen' 
        But if 'ExactPlace' is not in a 'TargetArea'
        Then display 'TryAnotherLocation' screen

    Scenario: Try another location
        Given 'TryAnotherLocation' screen is displayed 
        When  'TryAnotherLocation' button is selected 
        Then display 'FindLocation' screen

    :(

    Scenario: Location does not exist
        Given the 'FindLocation' search screen is displayed 
        When  I enter 'PlaceName' or 'Postcode' into the search field
        And no match can be found to search term entered
        Then display Error on 'FindLocation' screen
        
    Scenario: Change Location for postcode
        Given the 'FindLocation' search screen is displayed
        When I enter 'WA145QR' into the search field
        And the Select an address screen is displayed with picklist of addresses linked to 'WA145QR'
        But I want to change to find a different location 
        Then when I select the option to change the address I am displayed the 'FindLocation' search screen
        
     Scenario: Change Location for place
        Given the 'FindLocation' search screen is displayed
        When I enter 'Norwich' into the search field
        And the Select a place name screen is displayed with picklist of places linked to 'Norwich'
        But I want to change to find a different location 
        Then when I select the option to change the place name I am displayed the 'FindLocation' search screen
        

