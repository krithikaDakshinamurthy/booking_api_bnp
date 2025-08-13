@bookingAPI @deleteBooking
Feature: To delete a booking details

  Background: create an auth token
    Given user has access to endpoint "/auth"
    When user creates a auth token with credential "admin" & "password"
    Then user should get the response code 200

  @deleteBookingIDs
  Scenario: To delete a booking
    Given user has access to endpoint "/booking"
    And user makes a request to view booking IDs
    When user makes a request to delete booking with basic auth "admin" & "password"
    Then user should get the response code 201

 