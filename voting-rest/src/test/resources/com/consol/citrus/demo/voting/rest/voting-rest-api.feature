Feature: Voting Http REST API

  Background:
    Given URL: http://localhost:8080/rest/services
    Given variables
      | id      | citrus:randomUUID()  |
      | title   | Do you like Mondays? |
      | options | [ { "name": "yes", "votes": 0 }, { "name": "no", "votes": 0 } ] |
      | report  | true                 |

  Scenario: Create voting
    Given Request:
    """
    {
      "id": "${id}",
      "title": "${title}",
      "options": ${options},
      "report": ${report}
    }
    """
    And Content-Type: application/json
    When send POST /voting
    Then receive status 200 OK

  Scenario: Get empty voting list
    Given send DELETE /voting
    And receive status 200 OK
    Given Accept: application/json
    When send GET /voting
    Then Response: []
    And receive status 200 OK

  Scenario: Get voting list
    Given send DELETE /voting
    And receive status 200 OK
    Given Request:
    """
    {
      "id": "${id}",
      "title": "${title}",
      "options": ${options},
      "report": ${report}
    }
    """
    And Content-Type: application/json
    When send POST /voting
    Then receive status 200 OK
    When send GET /voting
    Then Response:
    """
    [
      {
        "id": "${id}",
        "title": "${title}",
        "options": ${options},
        "report": ${report},
        "closed": false
      }
    ]
    """
    And receive status 200 OK