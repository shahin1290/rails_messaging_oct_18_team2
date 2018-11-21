Feature: Sign Up Page

    As a user
    In order sign up to CA Mailboxer
    I want to be able to visit a sign up page and create an account

Scenario: Submit sign up form
    When I visit the "/users/sign_up"
    Then I should be able to fill in "user[name]" with "Camron"
    And I should be able to fill in "Email" with "camron@heroku.com"
    And I should be able to fill in "Password" with "camron1234"
    And I should be able to fill in "Password confirmation" with "camron1234"
    And I should be able to click "Create" button to submit form
    
