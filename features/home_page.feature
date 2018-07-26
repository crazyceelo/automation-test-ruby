Feature: User searches by city and narrows down search using filters.

  Background:
    Given I am on the home page
    Then I should see "Sell for more, pay as low as a 1% listing fee"
    Then I should click on "Log In"
    Then I should click on "Continue with Email"
    Then I should fill in "Email" with "solracias@hotmail.com"
    Then I should fill in "Password" with "Password101!"
    Then I should click on "Sign In"
    Then I should see "Carlos"

  Scenario: User can search
    Then I should fill in "City, Address, School, Agent, ZIP" with "Irvine"
    Then I should click on "Irvine"