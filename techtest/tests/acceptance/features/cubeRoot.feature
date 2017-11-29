Feature: Cuberoot
Scenario: CubeRoot of a given no
 Given I enter "1000" into the calculator
  And I hit "CubeRoot"
  And I hit "equals"
  Then I see a result of "10"
  
Scenario: CubeRoot of a given no
 Given I enter "18.609625" into the calculator
  And I hit "CubeRoot"
  And I hit "equals"
  Then I see a result of "2"

