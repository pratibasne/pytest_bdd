Feature: Full Retirement Calculator
  As a citizen, I want to use Retirement calculator to calculate
  when I will reach my retirement,
  so I can make plans after I retired.


  Scenario: Calculate Retire Age
    Given the year and month of birth "1982", "1"
    When the retire age is returned
    Then verify the age is equals '67'


  Scenario: Calculate the Year of Retirement
    Given the year and month of birth '2000', '5'
    When the year of retirement is returned
    Then verify the year is equals '2067'

  Scenario: Calculate Additional Months for Full Retirement Age
    Given the year and month of birth '1942', '3'
    When the additional months returned
    Then verify the additional months is equals '10'

  Scenario Outline: Calculate Full Retirement Age with Different Year and Month
    Given the year and month of birth "<year>", "<month>"
    Then verify "<retireAge>", "<addMonths>", "<retireMonth>", and "<retireYear>"

    Examples: Years, Months, Retire Age, Additional Months, Retire Month, and Retire Year
      | year | month | retireAge | addMonths | retireMonth | retireYear |
      | 1941   | 4   | 65          | 8         |December       | 2006     |
      | 1943   | 6   | 66          | 0         | June           | 2009     |
      | 1957   | 7   | 66          | 6         | January         | 2024     |
      | 1960   | 2   | 67          | 0         | February        | 2027     |
       | 2004   | 9  | 67          | 0         |September       | 2071     |

