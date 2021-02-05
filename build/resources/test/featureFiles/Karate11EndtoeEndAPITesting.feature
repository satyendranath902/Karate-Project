Feature: Karate Test Suite11
  End to End Api testing (API Chaining)

  @rest
  Scenario: Rest API Test Case1
    Given url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"Satyendra","salary":"1973","age":"31"}
    When method post
    Then status 200
    * print response
    * def id =  response.data.id
    * print id

    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method get
    Then status 200
    * print response
    * assert response.message == "Successfully! Record has been fetched."

    Given url "http://dummy.restapiexample.com/api/v1/update/" + id
    And request  {"name":"Satyendra","salary":"9999999","age":"31"}
    When method put
    Then status 200
    * print response
    * assert response.data.salary == "9999999"

    Given url "http://dummy.restapiexample.com/api/v1/delete/" + id
    When method delete
    Then status 200
    * print response





