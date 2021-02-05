Feature: Calling Feature Test Suit
  Calling Feature

  @rest
  Scenario: CallingFeature Test Case1
    * def Result = call read("CalledFeature.feature")
    * print Result
    * assert Result.response.string._ == "104"

