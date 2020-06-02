Feature: Add location

    As a citizen that wants to register to get warnings
    I need to tell the Organisation which location I want to get warnings for 
    So they can send me warning for my location of interest

    Happy path :)

    Scenario: Chooses property 
        Given the 'property' radio button is selected
        When I enter 'WA145QR' into the 'property' field
        And 'WA145QR' is in a 'TargetArea'
        Then display 'YourLocationScreen' 
        But if 'WA145QR' is not in a 'TargetArea'
        Then display 'TryAnotherLocation' screen       

    Scenario: Chooses location 
        Given the 'location' radio button is selected
        When I enter 'Norwich' into the 'location' field
        And 'Norwich' is in a 'TargetArea'
        Then display 'YourLocationScreen' 
        But if 'Norwich' is not in a 'TargetArea'
        Then display 'TryAnotherLocation' screen

    Scenario: Try another location
        Given 'TryAnotherLocation' screen is displayed 
        When  'TryAnotherLocation' button is selected 
        Then display 'AddLocation' screen

    :(

    

