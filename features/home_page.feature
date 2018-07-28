Feature: User searches by city and narrows down search using filters.

  Background:
    Given I am on the home page
    When I should see "Sell for more, pay as low as a 1% listing fee"
    And I should click on "Log In"
    And I should click on "Continue with Email"
    And I should fill in "Email" with "solracias@hotmail.com"
    And I should fill in "Password" with "Password101!"
    And I should click on "Sign In"
    Then I should see "Carlos"

  Scenario: User can search
    When I should fill in "City, Address, School, Agent, ZIP" with "Irvine"
    And I should click on "Irvine"
    And I should click on "Filters"
    And I should select "minBeds" from "6"
    And I should select "baths" from "6+"
    And I should click on "House"
    And I should click on "Apply Filters"