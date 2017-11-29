Feature: Addition

Scenario: Add two positive numbers together
	Given I enter "2" into the calculator
	And I hit "add"
	And I enter "5" into the calculator
	And I hit "equals"
	Then I see a result of "7"
	
Scenario: Add two negative numbers together
	Given I enter "-2" into the calculator
	And I hit "add"
	And I enter "-5" into the calculator
	And I hit "equals"
	Then I see a result of "-7"

Scenario: Add one positive and one negative number
	Given I enter "-2" into the calculator
	And I hit "add"
	And I enter "5" into the calculator
	And I hit "equals"
	Then I see a result of "3"
	
	
Scenario: Add one integer and one decimal number
	Given I enter "2" into the calculator
	And I hit "add"
	And I enter "5.5" into the calculator
	And I hit "equals"
	Then I see a result of "7.5"
	
Scenario: Add number to zero
	Given I enter "2" into the calculator
	And I hit "add"
	And I enter "0" into the calculator
	And I hit "equals"
	Then I see a result of "2"


Scenario: Add three numbers
Given I enter "8" into the calculator
And I hit "add"
And I enter "-5" into the calculator
And I hit "add"
And I enter "2" into the calculator
And I hit "equals"
Then I see a result of "5"


Scenario: Add two numbers and multiply another
Given I enter "3" into the calculator
And I hit "add"
And I enter "5" into the calculator
And I hit "equals"
And I hit "multiply"
And I enter "2" into the calculator
And I hit "equals"
Then I see a result of "16"

