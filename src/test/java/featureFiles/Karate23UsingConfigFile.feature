Feature: Kafka Test Suite23
  Reading global variables from Karate Config


  Scenario: Karate Config Test Case
    Given url baseUrl
    And path listUsers
    When method get
    Then status 200
    * print response

