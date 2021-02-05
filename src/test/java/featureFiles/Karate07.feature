Feature: Karate Test Suite7
  Validate the data type of variable


  Scenario: Validate the data type of variable Test Case
    * def a = 10
    * def b = "karate"
    * def c = true
    * match a == "#number"
    * match b == "#string"
    * match c == "#boolean"


