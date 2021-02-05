Feature: Karate Test Suite10
  Validating Json output of Rest with Get Method

  @rest
  Scenario: Rest API Test Case1
    Given url "http://dummy.restapiexample.com/api/v1/employees"
    When method get
    Then status 200
    * match responseType == "json"
    * match response.status == "success"
    * match response.data[0].employee_name == "Tiger Nixon"
    * match response.status == "#string"

  @rest
  Scenario: Rest API Test Case2
    Given url "http://dummy.restapiexample.com"
    And path "/api/v1/employees"
    When method get
    Then status 200
    * match responseType == "json"
    * match response.status == "success"
    * match response.data[0].employee_name == "Tiger Nixon"
    * match response.status == "#string"




