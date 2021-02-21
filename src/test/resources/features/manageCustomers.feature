Feature: manage customers functionality

  Scenario:  create a customer
    * sign in as "role"
    * navigate to "my operations", "manage customers"
    * create a new customer
    * type ssn number "ssn"
    * search & verify ssn
    * type first name "firstName"
    * type last name "lastName"
    * type middle initial "middleInitial"
    * type email "email"
    * type mobile phone "mobilePhoneNumber"
    * type phone "phoneNumber"
    * type zip code "zipCode"
    * type address "address"
    * type city "city"
    * type same ssn number "ssn_same"
    * create date "date"
    * select country "country"
    * type state "state"
    * select account "account"
    * click on save button & verify

  Scenario Outline:  create customers - DDT
    * sign in as "<role>"
    * navigate to "my operations", "manage customers"
    * create a new customer
    * type ssn number "<ssn>"
    * search & verify ssn
    * type first name "<firstName>"
    * type last name "<lastName>"
    * type middle initial "<middleInitial>"
    * type email "<email>"
    * type mobile phone "<mobilePhone>"
    * type phone "<phone>"
    * type zip code "<zipCode>"
    * type address "<address>"
    * type city "<city>"
    * type same ssn number "<ssn_same>"
    * create date "<date>"
    * select country "<country>"
    * type state "<state>"
    * select account "<account>"
    * click on save button & verify

    Examples:
    | role | ssn | firstName | lastName |middleInitial | mobilePhone | phone | zipCode | address | city | ssn_same | date | country | state | account |