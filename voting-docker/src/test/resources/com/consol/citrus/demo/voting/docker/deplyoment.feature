Feature: Voting Docker infrastructure

  Scenario: Check container deployment state
    Given docker-client "dockerClient"
    Then container "voting-app" should be running
    And container "message-broker" should be running