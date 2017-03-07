Feature: Voting user interface

  Background:
    Given URL: http://localhost:8080/rest/services
    Given send DELETE /voting
    And receive status 200 OK

  Scenario: Welcome page
    When user starts browser
    And user navigates to "http://localhost:8080"
    Then page should display link with link-text="Run application"

  Scenario: Start application
    When user navigates to "http://localhost:8080"
    And user clicks link with link-text="Run application"
    And sleep 500 ms
    Then page should display heading with tag-name="h1"
    And page should display link with link-text="No voting found"
    And page should display form with id="new-voting"

  Scenario: Add todo entry
    When user navigates to "http://localhost:8080/voting"
    And user sets text "Visit DevoxxUS" to input with id="title"
    And user clicks button with id="submitNew"
    And sleep 500 ms
    Then page should display element with link-text="Visit DevoxxUS"
