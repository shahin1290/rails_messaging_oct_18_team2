Feature: Compose message

    As a User
    In order to send a message to someone
    I want to be able to compose a message

Background: Sign In to mailbox
    Given I navigate to the login page
    When I submit "Johannaanden@hotmail.com" and "johannaanden"
    Then I should be logged in 


Scenario: Composing a message
    Given I am on the "inbox" page
    Then I see "Compose"
    When I click on "Compose"
    And I select "Benji" from the "Recipients"
    And I fill in the "Subject" with "Hello"
    And I fill in the "Message" with "World"
    When I click the "Send Message" button
    Then the message is sent