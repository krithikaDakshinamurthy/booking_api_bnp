@bookerAPI @createBooking
Feature: To create a new booking in restful-booker

  @createBookingDataTable
  Scenario Outline: To create new booking using cucumber Data Table
    Given user has access to endpoint "/booking"
    When user creates a booking
      | firstname   | lastname   | email   | phone   | checkin   | checkout   |
      | <firstname> | <lastname> | <email> | <phone> | <checkin> | <checkout> |
    Then user should get the response code 200
    And user validates the response with JSON schema "createBookingSchema.json"

    Examples: 
      | firstname | lastname | email | phone | checkin    | checkout   | 
      | April      | Doe      |april@gmail.com |     9563248625    | 2025-10-05 | 2025-10-06| 
      | Jack      | Doe      | jack@gmail.com |      4578963254  | 2025-10-01 | 2025-10-02 | 


 