Feature: Karate Test Suit16
  Writing response to External File

  Scenario: select stmt test case
    * def util = Java.type("misc.utils")
    Given url "https://reqres.in/api/users?page=2"
    When method get
    Then status 200
    * def res = get response
   # * def res = get response $.data[0].email
    * print res
    * util.writeToFile("result21",res)

  Scenario: Reading result file
    * def data = read("classpath:result21")
    * print data
