Feature: Feature Test Suit14
  Calling  Java static and non static method

  Scenario: Non static Method TC

    * def env1 =
      """
      function()
      {
      var temp  = Java.type('misc.utils')
      var utils = new temp();
      return utils.method2();
      }
      """
    * print env1()
    * def res =  call env1
    * print res

  Scenario: static Method TC

    * def env2 =
      """
      function()
      {
      var temp  = Java.type('misc.utils')
      return temp.method2();
      }
      """
    * print env2()
