Feature: manage accounts functionality

  Scenario: create [or edit] account
    * sign in as "role"
    * navigate to "my operations", "manage accounts"
    * create a new account
    * type description "description"
    * type balance "balance"
    * select account type "account"
    * select account status type "accountStatus"
    * select creation date "date_create"
    * select closure date "date_close"
    * select employee "employee"
    * click on save button and verify

  Scenario Outline: create [or edit] accounts - DDT
    * sign in as "<role>"
    * navigate to "my operations", "manage accounts"
    * create a new account
    * type description "<description>"
    * type balance "<balance>"
    * select account type "<account>"
    * select account status type "<accountStatus>"
    * select creation date "<date_create>" [?]
    * select closure date "<date_close>" [?]
    * select employee "<employee>"
    * click on save button and verify

    Examples:
    | role | description | balance | account | accountStatus | date_create | date_close | employee |