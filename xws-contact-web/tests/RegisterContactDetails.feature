Feature: RegisterContactDetails

    As an external user that wants to register to get flood warnings
    I need to tell the Organisation how to contact me
    So the Organisation know how I want to get flood warnings

    :) happy path

    Scenario: Chooses telephone or text (for SMS)
        Given the 'Telephone or text' radio button is selected
        When I enter '07790776032' into the 'PhoneNumber' field
        (TBC - new screen)  And 'Text' is selected by user 
        Then send 'RegistrationCode' to '07790776032' via SMS
        And message displayed on Enter code screen displays '07790776032' as telephone number provided by user
                     
    Scenario: Chooses email
        Given the 'Email' radio button is selected
        When I enter 'test@test.com' into the 'email' field
        Then send 'RegistrationCode' to 'test@test.com'
        And message displayed on Enter code screen displays 'test@test.com' as email address provided by user

     # current version only sends SMS to mobile phone users 
     # Whimsical screen flow diagram suggest new screen for user to select Text or Automated telephone call to then include test below

    Scenario: Chooses telephone or text (for automated telephone call when added to prototype)
        Given the 'Telephone or text' radio button is selected
        When I enter '01904728765' into the 'PhoneNumber' field
        And 'Automated telephone call' is selected by user 
        Then the 'RegistrationCode' is sent to '01904728765' via Automated telephone call
        And message displayed on Enter code screen displays '01904728765' as telephone number provided by user

    # Users told us they wanted to register multiple contacts when they register. Can't see this reflected in the contact first prototype

    Scenario: Enter your code
        Given a 'RegistrationCode' has been entered into the 'RegistrationCode' field
        When the 'continue' button is selected
        And the 'RegistrationCode' entered matches the correct code
        Then the 'location' page is displayed

    :( Unhappy

    Scenario: Enter incorrect code
        Given a 'RegistrationCode' has been entered into the 'RegistrationCode' field
        When the incorrect code has been entered and the 'continue' button is selected
        Then the warning message 'The code you entered is incorrect' is displayed
        
    Scenario: Enter incorrect code again
        Given a 'RegistrationCode' has been entered into the 'RegistrationCode' field
        When the incorrect code has been entered for a second time and the 'continue' button is selected
        Then the warning message 'The code you entered is incorrect - you have 1 attempt remaining' is displayed
        
    Scenario: Enter incorrect code for third time
        Given a 'RegistrationCode' has been entered into the 'RegistrationCode' field
        When the incorrect code has been entered for a third time and the 'continue' button is selected
        Then the user is redirected back to the start page
        
    Scenario: Enter Registration code which has timed out
        Given a 'RegistrationCode' has been entered into the 'RegistrationCode' field
        When the 'RegistrationCode' entered has expired and the 'continue' button is selected
        Then the Code expired page is displayed
        
    Scenario: Request new Registration code which has timed out
        Given a user has entered a 'RegistrationCode' into the 'RegistrationCode' field which has expired 
        When the Code Expiry page is displayed and the user selects 'Get New code' 
        Then a new code is sent to the user via their preferred channel
        And the Enter your code page is displayed      
        
                
