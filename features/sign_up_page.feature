Feature: Sign Up Page
    As a user
    In order sign up to CA Mailboxer
    I want to be able to visit a sign up page and create an account

Scenario: Submit sign up form [Happy path]
    When I visit the "sign up" page
    Then I should be able to fill in "Name" with "Camron"
    And I should be able to fill in "Email" with "camron@heroku.com"
    And I should be able to fill in "Password" with "camron1234"
    And I should be able to fill in "Password confirmation" with "camron1234"
    Then I should see "Log in" link
    When I click "Create" to submit form
    And I should see "Welcome! You have signed up successfully."

Scenario: Submit sign up form [Sad path]
    When I visit the "sign up" page
    And I fill "Name" with " "    
    And I fill "Email" with " "
    And I fill "Password" with " "
    And I fill "Password confirmation" with " "
    When I click "Create" to submit form
    Then I should see "Email can't be blank"
    Then I should see "Password can't be blank"
    # Then I should see "Password confirmation doesn't match Password"

    
