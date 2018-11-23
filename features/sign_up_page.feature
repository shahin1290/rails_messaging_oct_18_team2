Feature: Sign Up Page
    As a user
    In order sign up to CA Mailboxer
    I want to be able to visit a sign up page and create an account

Scenario: Submit sign up form [Happy path]
    When I visit the "sign up" page
    Then I fill in "Name" with "Camron"
    And I fill in "Email" with "camron@heroku.com"
    And I fill in "Password" with "camron1234"
    And I fill in "Password confirmation" with "camron1234"
    When I click "Create"
    And I should see "Welcome! You have signed up successfully."

Scenario: Submit sign up form without name [Sad path]
    When I visit the "sign up" page
    Then I fill in "Name" with " "    
    When I click "Create"
    Then I should see "Name can't be blank"

Scenario: Submit sign up form without email [Sad path]
    When I visit the "sign up" page
    Then I fill in "Email" with " "
    When I click "Create"
    Then I should see "Email can't be blank"
 
Scenario: Submit sign up form without password [Sad path]
    When I visit the "sign up" page
    Then I fill in "Password" with " "
    When I click "Create"
    Then I should see "Password can't be blank"