@tag
Feature: Calculator

  Scenario: add two numbers
    Given Two input values, 1 and 2
    When I add the two values
    Then I expect the result 3

  Scenario Outline: add two numbers
    Given Two input values, <first> and <second>
    When I add the two values
    Then I expect the result <result>

    Examples:
      | first | second | result |
      | 1     | 12     | 13     |
      | -1    | 6      | 5  	|
      | 2     | 2      | 4	    |

  Scenario: multiply two numbers
    Given Two input values, 1 and 2
    When I multiply the two values
    Then I expect the result 2

  Scenario Outline: multiply two numbers
    Given Two input values, <first> and <second>
    When I multiply the two values
    Then I expect the result <result>

    Examples:
      | first | second | result |
      | 1     | 12     | 12     |
      | -1    | 6      | -6  	|
      | 2     | 2      | 4	    |

  Scenario: divide two numbers
    Given Two input values, 1 and 2
    When I divide the two values
    Then I expect the result 3

  Scenario Outline: divide two numbers
    Given Two input values, <first> and <second>
    When I divide the two values
    Then I expect the result <result>

    Examples:
      | first | second | result |
      | 12    | 3      | 4      |
      | 5     | 5      | 1  	|
      | 14    | 2      | 7	    |

  Scenario: power two numbers
    Given Two input values, 1 and 2
    When I power the two values
    Then I expect the result 3

  Scenario Outline: power two numbers
    Given Two input values, <first> and <second>
    When I power the two values
    Then I expect the result <result>

    Examples:
      | first | second | result |
      | 2     | 3      | 8      |
      | 3     | 2      | 9  	|
      | 4     | 4      | 256    |