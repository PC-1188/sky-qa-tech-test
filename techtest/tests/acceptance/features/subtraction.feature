Feature: Subtraction

Scenario: Subtract two positive numbers where number1 is greater than number2
	Given I enter "5" into the calculator
	And I hit "subtract"
	And I enter "3" into the calculator
	And I hit "equals"
	Then I see a result of "2"
	
Scenario: Subtract two positive numbers where number1 is less than number2
	Given I enter "3" into the calculator
	And I hit "subtract"
	And I enter "5" into the calculator
	And I hit "equals"
	Then I see a result of "-2"
	
Scenario: Subtract two negative numbers where number1 is greater than number2
	Given I enter "-2" into the calculator
	And I hit "subtract"
	And I enter "-8" into the calculator
	And I hit "equals"
	Then I see a result of "6"
	
Scenario: Subtract two negative numbers where number1 is less than number2
	Given I enter "-8" into the calculator
	And I hit "subtract"
	And I enter "-2" into the calculator
	And I hit "equals"
	Then I see a result of "-6"
	
Scenario Outline: Subtract one positive and one negative number2
	Given I enter <number1> into the calculator
	And I hit "subtract"
	And I enter <number2> into the calculator
	And I hit "equals"
	Then I see a result of <result>
	
	Examples:
	|number1|number2|result|
	|5|-2|7|
	|-5|2|-7|

Scenario: Subtract zero from any number
    Given I enter "0" into the calculator
	And I hit "subtract"
	And I enter "5" into the calculator
	And I hit "equals"
	Then I see a result of "-5"
	
Scenario: Subtract any number from zero	
    Given I enter "5" into the calculator
	And I hit "subtract"
	And I enter "0" into the calculator
	And I hit "equals"
	Then I see a result of "5"


Scenario Outline: Subtract three numbers
Given I enter <number1> into the calculator
And I hit "subtract"
And I enter <number2> into the calculator
And I hit "subtract"
And I enter <number3> into the calculator
And I hit "equals"
Then I see a result of <result>
Examples:
|number1|number2|number3|result|
|4|2|-1|3|
|-3|1|-8|4|
|-1|-1|-2|2|

Scenario: Subtract two numbers and multiply another
Given I enter "2" into the calculator
And I hit "subtract"
And I enter "6" into the calculator
And I hit "equals"
And I hit "multiply"
And I enter "4" into the calculator
And I hit "equals"
Then I see a result of "-16"