Feature: sign in & user info & password functionality

  Scenario: sign in
    * open home page
    * open sign in window
    * enter username "username" & password "password" [as "role"]
    * sign in & verify name "fullName"

  Scenario: sign in
    * sign in as "role"

  Scenario: sign in
    * sign in as "<role>"
      | admin    |
      | manager  |
      | employer |
      | customer |

  Scenario Outline: sign in - DDT
    * open home page
    * open sign in window
    * enter username "<username>" & password "<password>" [as "<roles>"]
    * sign in & verify name "<fullName>"

    Examples:
    | username | password | fullName |

  # user info functionality

  # password functionality