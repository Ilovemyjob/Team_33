Feature: manage accounts functionality

  Background: manage accounts
    * sign in as employer
    * navigate to "My Operations", "Manage Accounts"

  Scenario: accounts table
    * verify that accounts table is displayed with the following columns
      | ID                  |
      | Description         |
      | Balance             |
      | Account Type        |
      | Account Status Type |
      | Create Date         |
      | Closed Date         |
      | Employee            |

  Scenario: view & edit & delete buttons
    * verify that view & edit & delete buttons are visible and clickable for each row

  Scenario: view account
    * click on the view button of the row, providing "id"
    * verify that following account information is displayed
      | ID                  |
      | Description         |
      | Balance             |
      | Account Type        |
      | Account Status Type |
      | Create Date         |
      | Closed Date         |
      | Employee            |

  Scenario: edit account
    * click on the edit button of the row, providing "id"
    * verify that following account information is populated
      | ID                  |
      | Description         |
      | Balance             |
      | Account Type        |
      | Account Status Type |
      | Create Date         |
      | Closed Date         |
      | Employee            |

  Scenario: edit account
    * click on the edit button of the row, providing "id"
    * edit description " "
    * verify that message containing "tPAccount.updated" appears
    * edit balance " "
    * verify that message containing "tPAccount.updated" appears
    * edit account type " "
    * verify that message containing "tPAccount.updated" appears
    * edit account status type " "
    * verify that message containing "tPAccount.updated" appears
    * edit creation date " "
    * verify that message containing "tPAccount.updated" appears
    * edit closure date " "
    * verify that message containing "tPAccount.updated" appears
    * edit employee " "
    * verify that message containing "tPAccount.updated" appears
      # generate data from Java Faker

  Scenario: delete account
    * click on the delete button of the row, providing "id"
    * verify that message containing "Confirm delete operation" is displayed
    * click on the delete button
    * verify that message containing "tPAccount.deleted" appears

  Scenario: create account
    * click on create a new account button
    * type description "description"
    * type balance "balance"
    * select account type "accountType"
    * select account status type "accountStatusType"
    * select creation date "date_create"
    * select closure date "date_close"
    * select employee "employee"
    * click on the save button & verify "message"

  Scenario Outline: create accounts - DDT

    * create a new account
    * type description "<description>"
    * type balance "<balance>"
    * select account type "<accountType>"
    * select account status type "<accountStatusType>"
    * select creation date "<date_create>"
    * select closure date "<date_close>"
    * select employee "<employee>"
    * click on the save button and verify "<message>"

    Examples:
    | description | balance | accountType | accountStatusType | date_create | date_close | employee | message |

    # Account Type options: CHECKING, SAVING, CREDIT_CARD, INVESTING
    # Account Status Type options: ACTIVE, SUSPENDED, CLOSED

    # description, balance, account type, account status type -> keep them blank, and verify error message!
    # date -> provide below invalid data for date, and verify error message
        # | 19/02/2021 14:28 |
        # | 20/02/2021 16:38 |
        # | 21/02/2021 15:08 |
        # | 02/21/2021 15:00 |
        # | 01/29/2021 44:02 |
