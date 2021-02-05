Feature: Kafka Test Suite24
  Using scenario and feature level Test Fixtures(Karate Hooks)

  Background: init
    * print "from background block"

    * configure afterScenario =
    """
    function (){
    karate.log("from after scenario")
    }
    """
    * configure afterFeature =
    """
    function (){
    karate.log("from after feature")
    }
    """


  Scenario: Karate Hooks Test Case1
    * print "from Scenario block"


