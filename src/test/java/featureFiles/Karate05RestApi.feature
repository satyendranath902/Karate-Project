Feature: Karate Test Suite5
  Validate Rest API

  @rest
  Scenario: Rest API Case1
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=40"
    When method POST
    Then status 200
    * print responseHeaders
    * print responseType
    * print response
    * match responseType == "xml"
    * assert responseTime <= 1000
    * match response contains "104"
    * match response //string == 104

