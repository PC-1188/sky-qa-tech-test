Feature: Division

Scenario: Divide two numbers where dividend is bigger than divisor
	Given I enter "6" into the calculator
	And I hit "divide"
	And I enter "2" into the calculator
	And I hit "equals"
	Then I see a result of "3"

Scenario: Divide two numbers where dividend is smaller than divisor
	Given I enter "5" into the calculator
	And I hit "divide"
	And I enter "10" into the calculator
	And I hit "equals"
	Then I see a result of "0.5"
	
Scenario: Divide two negative numbers
	Given I enter "-6" into the calculator
	And I hit "divide"
	And I enter "-2" into the calculator
	And I hit "equals"
	Then I see a result of "3"
	
Scenario: Divide one positive and one negative number
	Given I enter "8" into the calculator
	And I hit "divide"
	And I enter "-2" into the calculator
	And I hit "equals"
	Then I see a result of "-4"
	
Scenario: Divide zero by any number
	Given I enter "0" into the calculator
	And I hit "divide"
	And I enter "5" into the calculator
	And I hit "equals"
	Then I see a result of "0"
	
	
Scenario: Divide any number by zero
	Given I enter "5" into the calculator
	And I hit "divide"
	And I enter "0" into the calculator
	And I hit "equals"
	Then I see a result of [INF]
	

	
Scenario: Divide two numbers and add another
Given I enter "6" into the calculator
And I hit "divide"
And I enter "2" into the calculator
And I hit "add"
And I enter "10" into the calculator
And I hit "equals"
Then I see a result of "13"
