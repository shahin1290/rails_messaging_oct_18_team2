Feature: Sign Up Page
    As a user
    In order sign up to CA Mailboxer
    I want to be able to visit a sign up page and create an account

Scenario: Submit sign up form [Happy path]
    When I visit the "sign in" page
    Then I should be able to fill in "Name" with "Camron"
    And I should be able to fill in "Email" with "camron@heroku.com"
    And I should be able to fill in "Password" with "camron1234"
    And I should be able to fill in "Password confirmation" with "camron1234"
    When I click "Create" to submit form
    And I should see "Welcome! You have signed up successfully."
    
