Feature: registration functionality

  Background:
    * open home page
    * go to registration page

  Scenario: registration
    * enter ssn number "ssn"
    * enter first name "firstName"
    * enter last name "lastName"
    * enter address "address"
    * enter mobile phone "mobilePhone"
    * enter username "username"
    * enter email "email"
    * enter new password "password_new"
    * confirm new password "password_confirm"
    * click on register button
    * verify success message

  Scenario Outline: registration - DDT
    * enter ssn number "<ssn>"
    * enter first name "<firstName>"
    * enter last name "<lastName>"
    * enter address "<address>"
    * enter mobile phone "<mobilePhone>"
    * enter username "<username>"
    * enter email "<email>"
    * enter new password "<password_new>"
    * confirm new password "<password_confirm>"
    * click on register button
    * verify success message

    Examples:
    | ssn | firstName | lastName | address | mobilePhone | username |email | newPassword | confirmPassword |
