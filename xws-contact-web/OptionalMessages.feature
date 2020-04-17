Feature: optional messages 

As a citizen that wants to register to get warnings
I need to know about the different types of warning I can get 
So I can specify what I want the Organisation to send me

Scenario: Property is in a target area
Given the 'property' is in a 'TargetArea' 
When 'OptionalMessages' are displayed 
Then display 'Remove' checkbox

Scenario: location is in a target area
Given the 'location' is in a 'TargetArea' 
When 'OptionalMessages' are displayed 
Then display 'Remove' checkbox

Scenario: Property is in a optional target area
Given the 'property' is in a 'OptionalTargetArea' 
When 'OptionalMessages' are displayed 
Then display 'Opt-in' checkbox

Scenario: location is in a optional target area
Given the 'property' is in a 'OptionalTargetArea' 
When 'OptionalMessages' are displayed 
Then display 'Opt-in' checkbox

Scenario: SMS
Given the user did not select the 'text' field during registration
When 'OptionalMessages' are displayed 
Then display 'SendMeAText' checkbox 
