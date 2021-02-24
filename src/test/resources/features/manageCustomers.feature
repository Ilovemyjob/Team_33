Feature: manage customers functionality

  Background: manage customers
    * sign in as "employer"
    * navigate to "My Operations", "Manage Customers"

  Scenario: customers table
    * verify that customers table is displayed with following columns
      | ID                  |
      | First Name          |
      | Last Name           |
      | Middle Initial      |
      | Email               |
      | Mobile Phone Number |
      | Phone Number        |
      | Address             |
      | Create Date         |

  Scenario: view & edit & delete buttons
    * verify view & edit & delete buttons are visible and clickable for each row

  Scenario: view customer
    * click on view button of the row, providing "id"
    * verify following customer information is displayed
      | firstName     |
      | lastName      |
      | middleInitial |
      | email         |
      | mobilePhone   |
      | phone         |
      | zipCode       |
      | address       |
      | city          |
      | ssn           |
      | date          |
      | country       |
      | state         |
      | user          |
      | account       |
      | zelleEnrolled |

  Scenario: edit customer
    * click on edit button of the row, providing "id"
    * verify following customer information is populated
      | firstName     |
      | lastName      |
      | middleInitial |
      | email         |
      | mobilePhone   |
      | phone         |
      | zipCode       |
      | address       |
      | city          |
      | ssn           |
      | date          |
      | country       |
      | state         |
      | user          |
      | account       |
      | zelleEnrolled |

  Scenario: edit customer
    * click on edit button of the row, providing "id"
    * edit first name " "
    * verify message containing "tPCustomer.updated" appears
    * edit last name " "
    * verify message containing "tPCustomer.updated" appears
    * edit middle initial name " "
    * verify message containing "tPCustomer.updated" appears
    * edit email " "
    * verify message containing "tPCustomer.updated" appears
    * edit mobile phone " "
    * verify message containing "tPCustomer.updated" appears
    * edit phone " "
    * verify message containing "tPCustomer.updated" appears
    * edit zip code " "
    * verify message containing "tPCustomer.updated" appears
    * edit address " "
    * verify message containing "tPCustomer.updated" appears
    * edit city " "
    * verify message containing "tPCustomer.updated" appears
    * edit ssn " "
    * verify message containing "tPCustomer.updated" appears
    * edit date " "
    * verify message containing "tPCustomer.updated" appears
    * edit country " "
    * verify message containing "tPCustomer.updated" appears
    * edit state " "
    * verify message containing "tPCustomer.updated" appears
    * edit user " "
    * verify message containing "tPCustomer.updated" appears
    * edit account " "
    * verify message containing "tPCustomer.updated" appears
    * edit zelle enrolled " "
    * verify message containing "tPCustomer.updated" appears
      # generate data from Java Faker

  Scenario: delete customer
    * click on delete button of the row, providing "id"
    * verify message containing "Confirm delete operation" is displayed
    * click on delete button
    * verify message containing "tPCustomer.deleted" appears

  Scenario: create a customer
    * click on create a new customer button
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
    * select "user"
    * select account "account"
    * click on save button & verify "message"

  Scenario Outline: create customers - DDT
    * click on create a new customer button
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
    * select customer creation date "<date>"
    * select country "<country>"
    * type state "<state>"
    * select "user"
    * select account "<account>"
    * click on save button & verify "<message>"

    Examples:
   | ssn | firstName | lastName |middleInitial | email | mobilePhone | phone | zipCode | address | city | ssn_same | date | country | state | account | message |

    # address, city, county, state -> keep some of them blank, and verify error message!
    # date -> provide below invalid data for date, and verify error message
        # | 19/02/2021 14:28 |
        # | 20/02/2021 16:38 |
        # | 21/02/2021 15:08 |
        # | 02/21/2021 15:00 |
        # | 01/29/2021 44:02 |
    # user -> pass null value, and verify error message

  Scenario: Zelle Enrolled checkbox
    * click on create a new customer button
    * select Zelle Enrolled checkbox
    * verify the checkbox is selected

