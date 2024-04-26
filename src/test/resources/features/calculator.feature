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
      | -1    | 6      | 5  	    |
      | 2     | 2      | 4	    |

  Scenario: multiply two numbers
    Given Two input values, 1 and 2
    When I * the two values
    Then I expect the result 2

  Scenario Outline: multiply two numbers
    Given Two input values, <first> and <second>
    When I <operand> the two values
    Then I expect the result <result>

    Examples:
      | first | second | operand | result |
      | 1     | 12     | *       | 12     |
      | -1    | 6      | *  	 | -6     |
      | 2     | 2      | *	     | 4      |

  Scenario: divide two numbers
    Given Two input values, 5 and 5
    When I / the two values
    Then I expect the result 1

  Scenario Outline: multiply two numbers
    Given Two input values, <first> and <second>
    When I <operand> the two values
    Then I expect the result <result>

    Examples:
      | first | second | operand | result |
      | 12    | 3      | /       | 4      |
      | 15    | 5      | /  	 | 3      |
      | 20    | 4      | /	     | 5      |

  Scenario: power two numbers
    Given Two input values, 3 and 2
    When I ^ the two values
    Then I expect the result 9

  Scenario Outline: multiply two numbers
    Given Two input values, <first> and <second>
    When I <operand> the two values
    Then I expect the result <result>

    Examples:
      | first | second | operand | result |
      | 2     | 4      | ^       | 16     |
      | 3     | 3      | ^  	 | 27     |
      | 1     | 25     | ^	     | 1      |