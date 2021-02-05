Feature: Karate Test Suite2
  Validate JSON Content

  Scenario: Json Case1
    this is the 1st scenario
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    * print json.id
    * print json.tool.name
    * print json.tool.version

  Scenario: Json Case2
  this is the 2nd scenario
    Given def json =
    """
    {
        "id" : "101",
        "tool": { "name":"Karate", "version":"0.9.6"}
     }
     """
    * print json
    * print json.id
    * print json.tool.name
    * print json.tool.version

  Scenario: Json Case3
  this is the 3rd scenario
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * assert json.id == "101"
    * assert json.tool.name == "Karate"
    * assert json.tool.version == "0.9.6"

  Scenario: Json Case4
  this is the 4th scenario
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * match json.tool == { "name":"Karate", "version":"0.9.5"}

  Scenario: Json Case5
  this is the 5th scenario
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * match json.tool == { "name":"Karate", "version":"0.9.6"}



