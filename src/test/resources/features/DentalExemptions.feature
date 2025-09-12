Feature: Dental Exemptions
  Scenario Outline: End to End scenarios for dental exemptions
    Given I am checking to see if I am exempt from paying for prescriptions
    When my date of birth is "<day>" "<month>" "<year>"
    And my firstname is "<firstname>" and my lastname is "<lastname>"
    And my postcode is "<postcode>"
    Then I should see the "<output>" screen

    Examples:
        | day | month | year | firstname | lastname        | postcode  | output            |
        | 12  | 01    | 2003 | TestA     | Sam             | NE15 8NY  | No match          |
        | 01  | 07    | 2002 | TestB     | Adamson         | NE15 8NY  | No match          |
        | 01  | 08    | 1974 | TestC     | Richards        | NE15 8NY  | No match          |
        | 01  | 12    | 1959 | TestD     | Wright          | NE15 8NY  | Result 60 or over |

        | 21  | 09    | 1995 | TestE     | Smith           | L15 3JY   | Result Prescription Dental Exemption      |
        | 01  | 04    | 1990 | TestF     | Adamson         | NE15 8NY  | Result Prescription Exemption             |
        | 05  | 05    | 2000 | TestG     | Richards        | LN16 9NY  | Result Prescription Exemption             |
        | 01  | 01    | 1970 | TestH     | Wright          | NE1 9XY   | Result Prescription Dental Exemption      |
        | 01  | 01    | 1993 | HcTwo     | Active          | L15 3JY   | Result Prescription Dental Exemption      |
        | 01  | 08    | 1960 | TestJ     | Hudson          | LN16 9NY  | Result Prescription Dental Exemption      |
        | 01  | 09    | 1959 | TestK     | Ranger          | NE15 8NY  | Result 60 or Over                        |
