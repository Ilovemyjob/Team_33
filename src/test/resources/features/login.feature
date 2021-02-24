Feature: sign in & user info & password functionality

  @wip
  Scenario: sign in
    * sign in as "employee"

  Scenario Outline: sign in
    * sign in as "<role>"

    Examples:
      | role     |
      | admin    |
      | manager  |
      | employee |
      | customer |

  Scenario Outline: sign in
    * open landing page
    * click on sign in button & navigate to login page
    * type username "<username>" & password "<password>" for "<role>"
    * verify error message

    Examples:
      | role     | username | password |
      | admin    | valid    | invalid  |
      | admin    | invalid  | valid    |
      | admin    | invalid  | invalid  |
      | manager  | valid    | invalid  |
      | manager  | invalid  | valid    |
      | manager  | invalid  | invalid  |
      | employer | valid    | invalid  |
      | employer | invalid  | valid    |
      | employer | invalid  | invalid  |
      | customer | valid    | invalid  |
      | customer | invalid  | valid    |
      | customer | invalid  | invalid  |

  Scenario: reset password
    * open landing page
    * click on sign in button & navigate to login page
    * click on forget password button
    * type email & click on reset password button
    * verify that message for password reset appears

  Scenario: no registration yet
    * open landing page
    * click on sign in button & navigate to login page
    * click on register a new account button
    * verify that registration page opens

  Scenario: cancel
    * open landing page
    * click on sign in button & navigate to login page
    * click on cancel button
    * verify that it does not login




