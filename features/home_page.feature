Feature: Viewer visits the home
  page. In order to read the page
  as a Viewer
  I want to see the home page of my app.

  Scenario: View home page
    Given I am on the home page
    Then I should see "Sell for more, pay as low as a 1% listing fee"
    