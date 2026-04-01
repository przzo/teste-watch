Feature: Movie Search UI

  Scenario: Search for a movie in the UI
    Given I access the TMDB website
    When I search for "Vingadores" in the UI
    Then I should see movie results on the screen
    Then I should see release date for the movies