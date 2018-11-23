Feature: Reply to message
    As a user
    In order to send a response
    I want to be able to reply to a message in my inbox

Scenario: Submit sign up form without name [Sad path]
    When I visit the "sign up" page
    Then I fill in "Name" with " "    
    When I click "Create" to submit form
    Then I should see "Name can't be blank"

Scenario: Submit sign up form without email [Sad path]
    When I visit the "sign up" page
    Then I fill in "Email" with " "
    When I click "Create" to submit form
    Then I should see "Email can't be blank"
 
Scenario: Submit sign up form without password [Sad path]
    When I visit the "sign up" page
    Then I fill in "Password" with " "
    When I click "Create" to submit form
    Then I should see "Password can't be blank"

