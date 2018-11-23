Feature: Reply to message
  As a user
  In order to send a response
  I want to be able to reply to a message in my inbox

Background: Email exists in inbox
  Given following users exists
    | name   | email             | password | password_confirmation |
    | Jenny  | jenny@ranom.com   | password | password              |
    | Daniel | daniel@random.com | password | password              |
  And the following email exists
    | sender | receiver | body          | subject       |
    | Daniel | Jenny    | some message  | some subject  |
  And I am logged in as "Jenny"
  And I am on the "inbox" page

Scenario: Reply to a message
  When I click "View"
  And I click "Reply"
  Then I should see "Your reply message was successfully sent!"