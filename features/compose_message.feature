Feature: Compose message

    As a User
    In order to send a message to someone
    I want to be able to compose a message

Background:
    Given following users exists
        |name   |email              |password   |password_confirmation |
        |Jenny  |jenny@random.com|password   |password               |
        |Daniel|daniel@random.com|password|password|

Scenario: Composing a message (Happy Path)
    Given I am logged in as "Jenny"
    And I am on the "inbox" page
    Then I should see "Compose"
    When I click "Compose"
    And I select "Daniel" from the "Recipients"
    And I fill in "Subject" with "Hello"
    And I fill in "conversation_body" with "World"
    When I click "Message"
    Then I should see "Your message was successfully sent!"

Scenario: Composing a message (Sad Path - No recipients)
    Given I am logged in as "Jenny"
    And I am on the "inbox" page
    Then I should see "Compose"
    When I click "Compose"
    And I fill in "Subject" with "Hello"
    And I fill in "conversation_body" with "World"
    When I click "Message"
    Then I should see "Please select a recipient!"

Scenario: Composing a message (Sad Path - No subject)
    Given I am logged in as "Jenny"
    And I am on the "inbox" page
    Then I should see "Compose"
    When I click "Compose"
    And I select "Daniel" from the "Recipients"
    And I fill in "conversation_body" with "World"
    When I click "Message"
    Then I should see "Please fill in a subject!"