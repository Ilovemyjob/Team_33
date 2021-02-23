Feature: money transfer functionality

  Background: money transfer
    * sign in as customer
    * navigate to "My Operations", "Transfer Money"

  Scenario: multiple accounts
    * verify that From and To dropdowns contain more that one account

  Scenario Outline: balance
    * type balance "<balance>" & "<balance_cent>"
    * click on description input box
    * verify balance message "<balance_message>" & "<balance_cent_message>"

    Examples:
    | balance | balance_message           | balance_cent | balance_cent_message      |
    |         | This field is required.   |              |                           |
    | 1000    |                           | 23           |                           |
    | Abc     | only numbers max 5 digits | d            | only numbers max 2 digits |
    | 12b     | only numbers max 5 digits | 345          | only numbers max 2 digits |

  Scenario Outline: description
    * type description "<description>"
    * click on balance input box
    * verify balance message "<description_message>"

    Examples:
      | description     | description_message     |
      |                 | This field is required. |
      | Rental payment. |                         |

  Scenario: money transfer
    * select account option "option" from From dropdown
    * select account option "option" from To dropdown
    * type balance
    * type description
    * click on make transfer button & verify "message"