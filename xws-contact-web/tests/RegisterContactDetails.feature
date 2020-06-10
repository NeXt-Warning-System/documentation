Feature: RegisterContactDetails

    As an external user that wants to register to get flood warnings
    I need to tell the Organisation how to contact me
    So the Organisation know how I want to get flood warnings

    :) happy path

    Scenario: Chooses telephone or text
        Given the 'Telephone or text' radio button is selected
        When I enter '01904728765' into the 'PhoneNumber' field
        Then send 'RegistrationCode' to '01904728765'
               
    Scenario: Chooses email
        Given the 'Email' radio button is selected
        When I enter 'test@test.com' into the 'email' field
        Then send 'RegistrationCode' to 'test@test.com'

    Scenario: Chooses text
        Given the 'text' radio button is selected
        When I enter '07790776032' into the 'text' field
        Then the 'RegistrationCode' is sent to '07790776032'

    #Users told us they wanted to register multiple contacts when they register. Can't see this reflected in the contact first prototype

    Scenario: Enter your code by SMS
        Given a 'RegistrationCode' has been entered into the 'RegistrationCode' field
        When the 'continue' button is selected
        Then the 'location' page is displayed

    :( Unhappy



