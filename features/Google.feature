Feature: Google
  Scenario: Open home page
    Given I am on "http://google.com"
    Then the response should contain "foo"