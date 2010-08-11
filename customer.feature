Feature: customer features
  Scenario: Customer rents a regular movie
    Given A regular movie "movie"
     And  A customer
     When I rent  the movie
    Then I get result  "Rental Record for john movie 3.5 Amount owned is 0 You earned 1 frequent renter points"