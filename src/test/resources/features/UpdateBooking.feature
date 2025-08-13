@bookingAPI @updateBooking
Feature: To update a booking for an exisiting request

  Background: create an auth token
    Given user has access to endpoint "/auth"
    When user creates a auth token with credential "admin" & "password"
    Then user should get the response code 200

  @updateBookingDataTable
  Scenario Outline: To update a booking using cucumber Data Table
    Given user has access to endpoint "/booking"
    When user makes a request to view booking IDs
    And user updates the details of a booking
      | firstname   | lastname   | email   | depositpaid   | checkin   | checkout   | phone   |
      | <firstname> | <lastname> | <email> | <depositpaid> | <checkin> | <checkout> | <phone> |
    Then user should get the response code 200
   

    Examples: 
      | firstname | lastname | email | depositpaid | checkin    | checkout   | phone |
      | John      | Rambo    | Rambo@test.com      | true        | 2025-08-15 | 2025-08-17 | 7896541235       |
      | Rocky     | Balboa   |       Balboa@test.com | false       | 2025-08-01 | 2025-08-04 | 8965471238          |

  @updateBookingFromExcel
  Scenario Outline: To create and update a new booking using Excel data
    Given user has access to endpoint "/booking"
    And user creates a booking using data "<createKey>" from Excel
    When user updates the booking details using data "<updateKey>" from Excel
    Then user should get the response code 200
   
    Examples: 
      | createKey      | updateKey      |
      | createBooking1 | updateBooking1 |



  @partialUpdateBooking
  Scenario: To partially update a booking
    Given user has access to endpoint "/booking"
    When user makes a request to view booking IDs
    And user makes a request to update first name "John" & Last name "Wick"
    Then user should get the response code 200
   