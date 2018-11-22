Feature: Compose message

    As a User
    In order to send a message to someone
    I want to be able to compose a message

Background: Create a user
    Given the following users exist
    |name|email|password|
    |Johanna|Johannaanden@hotmail.com|johannaanden|


Scenario: Composing a message
    Given a user exists
    Given I am logged in as "Johanna"
    And I am on the "inbox" page
    Then I see "Compose"
    When I click on "Compose"
    And I select "Benji" from the "Recipients"
    And I fill in the "Subject" with "Hello"
    And I fill in the "Message" with "World"
    When I click the "Send Message" button
    Then the message is sent