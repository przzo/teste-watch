Feature: Movie Search API

  Scenario: Search for a valid movie
    Given I have a valid API key
    When I search for "Vingadores"
    Then I should receive a list of movies

  Scenario: Search for an invalid movie
    Given I have a valid API key
    When I search for "asdasdasd123123"
    Then I should receive an empty list