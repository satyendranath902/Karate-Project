Feature: Karate Test Suite1
  this is test suite description

  Scenario: karate Test Case1
    this is the 1st scenario
    Given def a = 10
    And def b = 20
    When def c = a + b
    Then assert c == 30
    And print "c = ", c
    And karate.log("End of the Test1.")

  Scenario: karate Test Case2
   this is the 2nd scenario
    Given def a = 10
    * def b = 20
    When def c = a + b
    Then assert c == 30
    * print "c = ", c
    * karate.log("End of the Test2.")

  Scenario: karate Test Case3
  this is the 2nd scenario
    * def a = 10
    * def b = 20
    * def c = a + b
    * assert c == 30
    * print "c = ", c
    * karate.log("End of the Test3.")