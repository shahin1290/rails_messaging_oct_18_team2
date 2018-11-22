Feature: Compose message

    As a User
    In order to send a message to someone
    I want to be able to compose a message

Background:
    Given following users exists
        |name   |email              |password   |password_confirmation |
        |Jenny  |jenny@random.com|password   |password               |
        |Daniel|daniel@random.com|password|password|


Scenario: Composing a message
    Given I am logged in as "Jenny"
    And I am on the "inbox" page
    Then I see "Compose"
    When I click on "Compose"
    And I select "Daniel" from the "Recipients"
    And I fill in the "Subject" with "Hello"
    And I fill in the "Message" with "World"
    When I click the "Send Message" button
    Then the message is sent