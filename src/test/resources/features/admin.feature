Feature: admin

  Background: admin
    * sing in as admin
    * navigate to "Administration", "user management"

  Scenario: view & edit & delete buttons
    * verify view, edit and delete buttons are visible and clickable for each row

  Scenario: view users
    * change activation status of a randomly selected user
    * verify the message containing "A user is updated with"
    * verify that activation status is changed

  Scenario Outline: activate user
    * activate user as "<userType>", created from excel file
    * verify the message containing "A user is updated with"
    * update excel file accordingly

    Examples:
    | userType |
    | admin    |
    | manager  |
    | employee |
    | customer |

  Scenario: edit user
    * get user from excel file & edit this user
    * verify that a message containing "A user is updated with" appears
    * update the excel file

  Scenario: delete user
    * get user from excel file & delete this user
    * verify message containing "A user is deleted with" appears
    * update the excel file accordingly