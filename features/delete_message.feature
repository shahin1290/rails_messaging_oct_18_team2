Feature: Delete Message from inbox
    As a user
    In order to remove messages from my inbox
    I want be able to delete and move my message to the trash bin

Background:
  Given following users exists
    | name   | email             | password | password_confirmation |
    | Jenny  | jenny@ranom.com   | password | password              |
    | Daniel | daniel@random.com | password | password              |

Scenario: Deleting a message
  Given I am logged in as "Daniel"
  And I am on the Inbox page
  And I send a mail to "Jenny"
  # And I am on the "home page"
  And I click on the "Logout" link
  Given I am logged-in as "Jenny"
  And I am on the "home page"
  And I click on the "Inbox" link
  Then I should have "1" messages
  And I click on the "View" link
  And I click on the "Move to trash" link
  Then I should have "0" messages