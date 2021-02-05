Feature: Karate Test Suite3
  Validate XML Content

  Scenario: XML Case1
    this is the 1st scenario
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * print xml
    * print xml/info/id
    * print xml.info.id
    * print xml.info.tool.name

  Scenario: XML Case2
  this is the 2nd scenario
    Given def xml =
    """
    {
    "info": {
    "id": "101",
    "tool": {
    "name": "Karate",
    "version": "0.9.6"
    }
    }
    }
    """
    * print xml
    * print xml/info/id
    * print xml.info.id
    * print xml.info.tool.name

  Scenario: XML Case3
  this is the 3rd scenario
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml/info/id == 101
    * match xml.info.id == "101"
    * match xml.info.tool.name == "Karate"

  Scenario: XML Case4
  this is the 4th scenario
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml contains "Karate"

  Scenario: XML Case5
  this is the 5th scenario
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml contains "<name>Karate</name>"

  Scenario: XML Case6
  this is the 6th scenario
    Given def xml =
    """
    <info>

  <tool>
  <name>Karate</name>
  <version>0.9.6</version>
  </tool>
  <tool>
      <name>IntelliJ</name>
      <version>2020.2</version>
  </tool>
</info>
    """
    * match xml/info/tool[1]/name contains "Karate"
    * match xml/info/tool[2]/name contains "IntelliJ"

  Scenario: XML Case7
  this is the 7th scenario
    Given def xml =
    """
    <info>

  <tool>
  <name>Karate</name>
  <version>0.9.6</version>
  </tool>
  <tool>
      <name>IntelliJ</name>
      <version>2020.2</version>
  </tool>
</info>
    """
    * match eval( xml/info/tool[1]/name == "Karate" ) && eval( xml/info/tool[2]/name == "IntelliJ" )




