Feature: Voting Docker infrastructure

  Background:
    Given docker client "dockerClient"

  Scenario: Check container state
    Then the docker container "voting-app" should be running