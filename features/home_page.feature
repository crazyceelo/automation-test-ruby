Feature: User searches by city and narrows down search using filters.

  Background:
    Given I am on the home page
    When I see the search field
    And I should click on "Log In"
    And I should click on "Continue with Email"
    And I should fill in "Email" with "solracias@hotmail.com"
    And I should fill in "Password" with "Password101!"
    And I should click on "Sign In"
    Then I should see user name "Carlos"

  Scenario: User gets results back
    When I should fill in "City, Address, School, Agent, ZIP" with "Irvine"
    And I should click on "Irvine"
    And I should click on "Filters"
    And I should select "minBeds" from "6"
    And I should select "baths" from "6+"
    And I should click on "House"
    And I should click on "Apply Filters"
    Then I should see all results

  Scenario: each result matches the criteria
    When I should fill in "City, Address, School, Agent, ZIP" with "Irvine"
    And I should click on "Irvine"
    And I should click on "Filters"
    And I should select "minBeds" from "6"
    And I should select "baths" from "6+"
    And I should click on "House"
    And I should click on "Apply Filters"
    Then all results contain at least "6" beds

  Scenario: each result matches the exact criteria
    When I should fill in "City, Address, School, Agent, ZIP" with "Irvine"
    And I should click on "Irvine"
    And I should click on "Filters"
    And I should select "minBeds" from "6"
    And I should select "baths" from "6+"
    And I should click on "House"
    And I should click on "Apply Filters"
    Then I should see all results with a minimum of 6 beds