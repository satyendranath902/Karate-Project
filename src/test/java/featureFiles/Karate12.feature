Feature: Karate Test Suite12
  Data Driven Testing

  @ddt
  Scenario Outline: DDT API Case1
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=<Temp>"
    When method POST
    Then status 200
    * print responseHeaders
    * print responseType
    * print response
    * match responseType == "xml"
    * assert responseTime <= 2000
    * match response contains "<Result>"
    * match response //string == <Result>

    Examples:
      |Temp|Result|
      |37  |98.6  |
      |40  |104   |

  @ddt
  Scenario Outline: DDT API Case2
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=<Temp>"
    When method POST
    Then status 200
    * print responseHeaders
    * print responseType
    * print response
    * match responseType == "xml"
    * assert responseTime <= 2000
    * match response contains "<Result>"
    * match response //string == <Result>

    Examples:
        | read("classpath:data.csv")|


