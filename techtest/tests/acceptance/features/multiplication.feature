Feature: Multiplication

Scenario: Multiply two numbers together
    Given I enter "5" into the calculator
    And I hit "multiply"
    And I enter "10" into the calculator
    And I hit "equals"
    Then I see a result of "50"

Scenario: Multiply three numbers together
    Given I enter "5" into the calculator
    And I hit "multiply"
    And I enter "10" into the calculator
    And I hit "multiply"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "100"

Scenario: Multiply two numbers and add another
    Given I enter "5" into the calculator
    And I hit "multiply"
    And I enter "10" into the calculator
    And I hit "add"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "52"
	
Scenario: Multiply two negative numbers together
	Given I enter "-2" into the calculator
	And I hit "multiply"
	And I enter "-5" into the calculator
	And I hit "equals"
	Then I see a result of "10"
	
Scenario: Multiply one positive and one negative number
	Given I enter "2" into the calculator
	And I hit "multiply"
	And I enter "-5" into the calculator
	And I hit "equals"
	Then I see a result of "-10"
	
Scenario: Multiply any number with zero
	Given I enter "2" into the calculator
	And I hit "multiply"
	And I enter "0" into the calculator
	And I hit "equals"
	Then I see a result of "0"
	
Scenario: Multiply and add numbers using the correct operator precedence
	Given I enter "5" into the calculator
    And I hit "add"
    And I enter "10" into the calculator
    And I hit "multiply"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "25"
