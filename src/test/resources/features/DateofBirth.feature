Feature: Date of Birth Validation

  Scenario Outline: Validate date of birth entry with day, month, and year
    Given I am checking to see if I am exempt from paying for prescriptions
    When I enter my date of birth as "<day>" "<month>" "<year>"
    Then I should see these "<output>"

    Examples:
      | day  | month | year  | output           |
      | 32   | 11    | 1980  | DOB Invalid      |
      | 22   | 13    | 1980  | DOB Invalid      |
      | 20   | 02    | 2055  | DOB Invalid Year |
      |      |       |       | DOB Invalid      |
      | AA   | 02    | 1975  | DOB Invalid      |
      | 20   | BB    | 1975  | DOB Invalid      |
      | EE   | EE    | EEEE  | DOB Invalid      |
      | 123  | 02    | 1980  | DOB Invalid      |
      | 20   | 123   | 1980  | DOB Invalid      |
      | 20   | 02    | 12345 | DOB Invalid      |
      | ++   | ++    | ++++  | DOB Invalid      |
      | 00   | 02    | 2000  | DOB Invalid      |
      | 20   | 00    | 2000  | DOB Invalid      |
      | 20   | 01    | 0000  | DOB Incorrect    |
      | 02   | 02    | 80    | DOB Incorrect    |
      | 28   | 04    | 00    | DOB Incorrect    |
      | 1    | 1     | 1     | DOB Incorrect    |
      | 0    | 0     | 0     | DOB Invalid      |
      | 1    | 1     | 1990  | Name Screen      |

  Scenario Outline: Validate age-based entry
    Given I am checking to see if I am exempt from paying for prescriptions
    When I declare my age as "<age>"
    Then I should see these "<outputs>"

    Examples:
      | age          | outputs           |
      | 14           | Result Under 16  |
      | 15           | Result Under 16  |
      | 16 tomorrow  | Result Under 16  |
      | 16           | Name Screen      |
      | 16 yesterday | Name Screen      |
      | 59           | Name Screen      |
      | 60           | Name Screen      |
      | 61           | Name Screen      |
      | no_date      | DOB Invalid      |
      | future       | DOB Invalid Year |
