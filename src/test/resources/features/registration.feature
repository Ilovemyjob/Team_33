Feature: registration functionality

  Background: registration
    * open landing page
    * navigate to registration page

  Scenario Outline: ssn_message
      * type ssn number "<ssn>"
      * verify "<ssn_message>"

      Examples:
      |     ssn     |                 ssn_message                 |
      |             | translation-not-found[Your SSN is required] |
      | 567*73*5790 | Your SSN is invalid                         |
      | 567735790   | Your SSN is invalid                         |
      | 567-735-790 | Your SSN is invalid                         |
      | 567-73-790  | Your SSN is invalid                         |
      | 5a7-73-790  | Your SSN is invalid                         |
      | 567-7!-790  | Your SSN is invalid                         |
      | 000-73-5790 | Your SSN is invalid                         |
      | 999-73-5790 | Your SSN is invalid                         |

  Scenario Outline: first name
    * type first name "<firstName>"
    * verify first name message "<message_firstName>"

    Examples:
    | firstName |      message_firstName      |
    |           | Your First Name is required |

  Scenario Outline: last name
    * type last name "<lastName>"
    * verify last name message "<message_lastName>"

    Examples:
      | lastName |     message_lastName       |
      |          | Your Last Name is required |

  Scenario Outline: mobile phone
    * type mobile phone "<mobilePhone>"
    * verify mobile phone message "<message_mobilePhone>"

    Examples:
      | mobilePhone  |         message_mobilePhone         |
      | 4567652390   | Your mobile phone number is invalid |
      | 456765239    | Your mobile phone number is invalid |
      | 456 765 2390 | Your mobile phone number is invalid |
      | 456/765/2390 | Your mobile phone number is invalid |
      | 4a6-7c5-2390 | Your mobile phone number is invalid |

  Scenario Outline: username
    * type username "<username>"
    * verify username message "<message_username>"

    Examples:
      | username |     message_username       |
      |          | Your username is required. |

  Scenario Outline: invalid email
    * type email "<email>"
    * verify email message "<message_email>"

    Examples:
      |      email       |     message_email     |
      | john_smith.com   | This field is invalid |
      | john@smithcom    | This field is invalid |
      | john.smith@com   | This field is invalid |
      | john@smith.com@  | This field is invalid |

  Scenario Outline: email less that 5 chars
    * type email "<email>"
    * verify the email message "<message_email>"

    Examples:
      | email |                message_email                        |
      | a     | Your email is required to be at least 5 characters. |
      | a@    | Your email is required to be at least 5 characters. |
      | a@b   | Your email is required to be at least 5 characters. |
      | a@b.  | Your email is required to be at least 5 characters. |

  Scenario Outline: no email
    * type email "<email>"
    * verify below email message "<message_email>"

    Examples:
      | email |     message_email       |
      |       | Your email is required. |

  Scenario Outline: no new password messages
    * type new password "<password_new>"
    * verify new password message "<password_new_message>"

    Examples:
    | password_new | password_new_message                                   |
    |              | Your password is required.                             |

  Scenario Outline: new password messages
    * type new password "<password_new>"
    * verify the new password message "<password_new_message>"

    Examples:
      | password_new | password_new_message                                   |
      | a            | Your password is required to be at least 4 characters. |
      | 1c           | Your password is required to be at least 4 characters. |
      | K&6          | Your password is required to be at least 4 characters. |
      | k?8          | Your password is required to be at least 4 characters. |
@wip
  Scenario Outline: new password confirmation messages
    * type new password confirmation "<password_new_confirmation>"
    * verify new password confirmation message "<password_new_confirmation_message>"

    Examples:
    | password_new_confirmation | password_new_confirmation_message                      |
    |                           | Your password is required.                             |
    | a                         | Your password is required to be at least 4 characters. |
    | 1c                        | Your password is required to be at least 4 characters. |
    | K&6                       | Your password is required to be at least 4 characters. |
    | k?8                       | Your password is required to be at least 4 characters. |
    | a!B7                      |                                                        |
    | 5a!B7                     |                                                        |
    | 5a!B75                    |                                                        |
    | Abcdefg                   |                                                        |

  Scenario Outline: new password strength
    * type new password "<password_new>"
    * verify password strength "<password_new_strength>"

    Examples:
    | password_new | password_new_strength |
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
    * type new password "<password>"
    * type new password confirmation "<password_confirm>"
    * verify new password confirmation message "<password_confirm_message>"

    Examples:
      | password    | password_confirm | password_confirm_message                        |
      | aaaa        | aaaa             |                                                 |
      | 12Ab!       | 12Ab!            |                                                 |
      | aaaa        | aaaaa            | The password and its confirmation do not match! |
      | 12Ab!       | 12Abc!           | The password and its confirmation do not match! |

  Scenario: registration
    * type ssn number "ssn"
    * type first name "firstName"
    * type last name "lastName"
    * type address "address"
    * type mobile phone "mobilePhone"
    * type username "username"
    * type email "email"
    * type new password "password_new"
    * type new password confirmation "password_new_confirmation"
    * verify that success message contains "Registration saved!"

  Scenario Outline: registration - DDT
    * type ssn number "<ssn>"
    * type first name "<firstName>"
    * type last name "<lastName>"
    * type address "<address>"
    * type mobile phone "<mobilePhone>"
    * type username "<username>"
    * type email "<email>"
    * type new password "<password_new>"
    * type new password confirmation "<password_new_confirmation>"
    * verify that success message contains "Registration saved!"

    Examples:
    | ssn | firstName | lastName | address | mobilePhone | username | email | password_new | password_new_confirmation |