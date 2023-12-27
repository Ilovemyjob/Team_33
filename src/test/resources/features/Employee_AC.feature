Feature: An Employee can create a new Account

  Background:


    * User click on My Operations
    * User click on Manage Accounts
    * User click Create a new Account

  @Emrah
  Scenario: User should create a description for the new account and it cannot be blank


    * User Enter invalid description
    * User see Error message "This field is required."

  Scenario: User should provide a balance for the first time account creation as Dollar

    * User enter invalid balance
    * User see Error message"This field is required."

  Scenario Outline: User can select an account type as CHECKING, SAVING, CREDIT_CARD or INVESTING
    * User click Account Type
    * User select one Account type "<Type>"
    * User see selected Account Type
    Examples:
      | Type |
      |CHECKING|
      |SAVING|
      |CREDIT_CARD   |
      | INVESTING    |

  Scenario Outline: Account status should be defined as ACTIVE, SUSPENDED or CLOSED
    * User click Account Status Type
    * User select one Account Status Type "<Type>"
    * User see selected Account Status Type
    Examples:
      | Type |
      |ACTIVE|
      |SUSPENDED|
      |CLOSED   |


  Scenario:User can select an employee from the drop-down

    * User click Employee Box
    * User can see Employee










