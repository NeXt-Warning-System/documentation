Feature: Your location

As a citizen that is registering for warnings
I need to see the areas i'll be warned about and how many warnings I'll likly get 
So that I know what areas I'll be warned about and how many warnings I'll likly get

Scenario: Display View map
Given 'YourLocationScreen' screen is displayed 
When the 'Map' button is selected
Then display the 'MapScreen'

Scenario: MapScreen displayed 
Given the 'MapScreen' is displayed 
When the  
