Feature: Login page

As a user
In order login to CA Mailboxer
I want to be able to visit a login page and enter my credentials

Background: 
    Given following users exists
        |name   |email            |password   |password_confirmation |
        |Jenny  |jenny@random.com |jenny1290  |    jenny1290         |
    And I am on the "login" page    
Scenario: Login to the application [Happy path]
    When I fill in "Email" with "jenny@random.com"
    And I fill in "Password" with "jenny1290"
    And I click "Log in"
    Then I should see 'Signed in successfully.'

Scenario: Login to the application incorrect email [Sad path]
    When I fill in 'Email' with 'menny@random.com'
    And I fill in 'Password' with 'jenny1290'
    And I click 'Log in'
    Then I should see 'Invalid Email or password'

Scenario: Login to the application with incorrect password [Sad path]
    When I fill in 'Email' with 'jenny@random.com'
    And I fill in 'Password' with 'menny1290'
    And I click 'Log in'
    Then I should see 'Invalid Email or password'