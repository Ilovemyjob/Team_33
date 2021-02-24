Feature: sign in & user info & password functionality

  Scenario Outline: sign in
    * open landing page
    * click on sign in button & navigate to login page
    * type valid username "<username>" & valid password "<password>" for "<role>"
    * verify home page & name "<fullName>"

    Examples:
    | role     | username | password | fullName |
    | admin    | valid    | valid    | valid    |
    | manager  | valid    | valid    | valid    |
    | employer | valid    | valid    | valid    |
    | customer | valid    | valid    | valid    |

  Scenario: sign in
    * sign in as "customer"
  @wip
  Scenario Outline: sign in
    * sign in as "<role>"

    Examples:
      | role     |
      | admin    |
      | manager  |
      | employee |
      | customer |

  Scenario Outline: sign in
    * open webpage
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
    * open webpage
    * click on sign in button & navigate to login page
    * click on forget password button
    * type email & click on reset password button
    * verify that message for password reset appears

  Scenario: no registration yet
    * open webpage
    * click on sign in button & navigate to login page
    * click on register a new account button
    * verify that registration page opens

  Scenario: cancel
    * open webpage
    * click on sign in button & navigate to login page
    * click on cancel button
    * verify that it does not login




