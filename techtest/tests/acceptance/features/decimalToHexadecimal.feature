Feature: decimalToHexadecimal
Scenario: decimal to hexadecimal of a given no
 Given I enter "459" into the calculator
  And I hit "decTohex"
  And I hit "equals"
  Then I see a result of "1CB"
  
Scenario: decimal to hexadecimal of a given no
 Given I enter "879" into the calculator
  And I hit "decTohex"
  And I hit "equals"
  Then I see a result of "36F"