Feature: user info functionality

  Background:
    * sign in as "role"
    * navigate to user info page

  Scenario Outline: update user info
    * update "<firstName>" & "<lastName>" & "<email>" and click on save
    * verify "<message>"

    Examples:
      |  firstName  |  lastName  |      email      |           message             |
      |    a        | a          | john@smith.com  | Settings saved!               |
      |    a        | a          | john_smith.com  | This field is invalid         |
      |    a        | a          | john@smithcom   | This field is invalid         |
      |    a        | a          | john.smith@com  | This field is invalid         |
      |    a        | a          | john@smith.com@ | This field is invalid         |

  Scenario: user info languages
    * verify languages contain only "<options>"
      | English |
      | Turkce  |
    # how to write Turkish character in IntelliJ?