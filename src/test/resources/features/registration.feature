Feature: registration functionality

  Background: registration
    * open webpage
    * navigate to registration page

    Scenario Outline: ssn number
      * type ssn number "<ssn>"
      * click on first name input box
      * verify "<message_ssn>"

      Examples:
      |     ssn     |                 message_ssn                 |
      | 567-73-5790 |                                             |
      |             | translation-not-found[Your SSN is required] |
      | 567*73*5790 | translation-not-found[Your SSN is required] |
      | 567735790   | translation-not-found[Your SSN is required] |
      | 567-735-790 | translation-not-found[Your SSN is required] |
      | 567-73-790  | translation-not-found[Your SSN is required] |
      | 5a7-73-790  | translation-not-found[Your SSN is required] |
      | 567-7!-790  | translation-not-found[Your SSN is required] |
      | 000-73-5790 | translation-not-found[Your SSN is required] |
      | 999-73-5790 | translation-not-found[Your SSN is required] |

    Scenario Outline: first name
      * type first name "<firstName>"
      * click on ssn input box
      * verify "<message_firstName>"

      Examples:
      | firstName |      message_firstName      |
      | Mike      |                             |
      |           | Your First Name is required |

  Scenario Outline: last name
    * type last name "<lastName>"
    * click on ssn input box
    * verify "<message_lastName>"

    Examples:
      | lastName |     message_lastName       |
      | Cyber    |                            |
      |          | Your Last Name is required |

  Scenario Outline: address
    * type address "<address>"
    * click on ssn input box
    * verify "<message_address>"

    Examples:
      | address                           |     message_address      |
      | 24 Grafton Street London SR3 HN7  |                          |
      | 24 Grafton Street London          | Zip Code is required     |
      |                                   | Your Address is required |

  Scenario Outline: mobile phone
    * type mobile phone "<mobilePhone>"
    * click on ssn input box
    * verify "<message_mobilePhone>"

    Examples:
      | mobilePhone  |          message_mobilePhone         |
      | 456-765-2390 |                                      |
      | 4567652390   | Your Mobile Phone Number is required |
      | 456765239    | Your Mobile Phone Number is required |
      | 456 765 2390 | Your Mobile Phone Number is required |
      | 456/765/2390 | Your Mobile Phone Number is required |
      | 4a6-7c5-2390 | Your Mobile Phone Number is required |
      |              | Your Mobile Phone Number is required |

  Scenario Outline: username
    * type username "<username>"
    * click on ssn input box
    * verify "<message_username>"

    Examples:
      | username |     message_username       |
      | George   |                            |
      | Chad     |                            |
      |          | Your username is required. |

  Scenario Outline: email
    * type email "<email>"
    * click on ssn input box
    * verify "<message_email>"

    Examples:
      |      email       |     message_email       |
      | john@smith.com   |                         |
      | john_smith.com   | Your email is required. |
      | john@smithcom    | Your email is required. |
      | john.smith@com   | Your email is required. |
      | john@smith.com@  | Your email is required. |
      |                  | Your email is required. |

    Scenario Outline: new password messages
      * type new password "<password_new>"
      * click on ssn input box
      * verify new password message "<password_new_message>"

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

    Scenario Outline: new password confirmation messages
      * type new password confirmation "<password_new_confirmation>"
      * click on ssn input box
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