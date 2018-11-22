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
  And I am on the inbox page
  And I send a mail to "Jenny"
  And I click "Logout" 
  Given I am logged in as "Jenny"
  And I am on the home page
  And I click "Inbox"
  Then I should have "1" messages
  And I click "View"
  And I click "Move to trash"
  Then I should have "0" messages