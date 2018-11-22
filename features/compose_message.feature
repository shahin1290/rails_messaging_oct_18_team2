Feature: Compose message

    As a User
    In order to send a message to someone
    I want to be able to compose a message

Scenario: Composeing a message
    Given I am on the "inbox" page
    When I click on "Compose" button
    And I select "Benji" from the "Recipients"
    And I fill in the "Subject" with "Hello"
    And I fill in the "Message" with "World"
    When I click the "Send Message" button
    Then the message is sent