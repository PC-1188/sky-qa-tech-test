Feature: Factorial

Scenario Outline: Factorial of a given no
    Given I enter <number1> into the calculator
    And I hit "factorial"
	And I hit "equals"
    Then I see a result of <result>
	
	Examples:
	|number1|result|
	|5|120|
	|10|3628800|
	|0|1|
