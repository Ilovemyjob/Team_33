Feature: password functionality

  Background: password
    * sign in as "customer"
    * navigate to password page

  Scenario Outline: new password message
    * type the new password "<password_new>"
    * click on new password confirmation input box
    * verify the new password message "<password_new_message>"

    Examples:
    | password_new | password_new_message                                   |
    |              | Your password is required.                             |
    | a            | Your password is required to be at least 4 characters. |
    | 1c           | Your password is required to be at least 4 characters. |
    | K&6          | Your password is required to be at least 4 characters. |
    | k?8          | Your password is required to be at least 4 characters. |
    | a!B7         |                                                        |
    | 5a!B7        |                                                        |
    | 5a!B75       |                                                        |
    | Abcdefg      |                                                        |

  Scenario Outline: password change messages
    * type the new password confirmation "<password_new_confirmation>"
    * click on the new password input box
    * verify the new password confirmation "<password_new_confirmation_message>"

    Examples:
    | password_new_confirmation | password_new_confirmation_message |
    |              | Your password is required.                             |
    | a            | Your password is required to be at least 4 characters. |
    | 1c           | Your password is required to be at least 4 characters. |
    | K&6          | Your password is required to be at least 4 characters. |
    | k?8          | Your password is required to be at least 4 characters. |
    | a!B7         |                                                        |
    | 5a!B7        |                                                        |
    | 5a!B75       |                                                        |
    | Abcdefg      |                                                        |

  Scenario Outline: password strength
    * type the new password "<password_new>"
    * verify the password strength "<password_strength>"

    Examples:
    | password_new | password_strength     |
    |              |           1           |
    | a            |           1           |
    | 1c           |           1           |
    | K&6          |           1           |
    | k?8          |           1           |
    | a!B7         |           1           |
    | 12ab         |           1           |
    | hJ_g         |           1           |
    | 11_G         |           1           |
    | AB_7         |           1           |
    | 5a!B7        |           1           |
    | A12ab        |           1           |
    | 4hJ_g        |           1           |
    | c11_G        |           1           |
    | !AB_7        |           1           |
    | 5a!B75       |           1           |
    | A12ab%       |           1           |
    | 4hj_g5       |           1           |
    | c11_Gh       |           1           |
    | !AB_7a       |           1           |
    | Abcdefg      |           1           |
    | 1234abc      |           1           |
    | ABC-!!J      |           1           |
    | abj_!!j      |           1           |
    | 5a!c%75      |           1           |
    | 4hj_g!5      |           1           |
    | C11_G^H      |           1           |
    | !ab_67a      |           1           |
    | A1_2a%h      |           1           |
    | 1*aB%h6      |           1           |
    | 2_Hab%h      |           1           |
    | A12a!!h      |           1           |

  Scenario Outline: password match
    * type the new password "<password_new>"
    * type the new password confirmation "<password_confirm>"
    * verify the password match message "<password_confirm_message>"

    Examples:
    | password_new | password_confirm | password_confirm_message                        |
    | aaaa         | aaaa             |                                                 |
    | 12Ab!        | 12Ab!            |                                                 |
    | aaaa         | aaaaa            | The password and its confirmation do not match! |
    | 12Ab!        | 12Abc!           | The password and its confirmation do not match! |

  Scenario Outline: password change
    * type the current password "<password_current>"
    * type the new password "<password_new>"
    * type the new password confirmation "<password_confirm>"
    * click on the save & verify password change message "<password_change_message>"

    Examples:
      | password_current | password_new | password_confirm | password_change_message |
    # create data for different scenarios
    # Password changed!
    # An error has occurred! The password could not be changed.