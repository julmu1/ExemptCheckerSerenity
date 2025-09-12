#@Regression
#Feature: Name Page
#  Scenario Outline: Verify validation works as expected on name page
#    Given I am checking to see if I am exempt from paying for prescriptions
#    When I declare my age as "<age>"
#    And my firstname is "<firstname>" and my lastname is "<lastname>"
#    Then I will see this "<output>"
#
#    Examples:
#      | testno | age | firstname                                 | lastname                                  | output               |
#      | TC1    | 31  | AutoTestFName                             | AutoTestLName                             | Postcode Page        |
#      | TC2    | 26  | NoFirstName                               | NoLastName                                | Name Error           |
#      | TC3    | 26  | RandomFirstName                           | RandomLastName                            | Postcode Page        |
#      | TC4    | 31  | 12345                                     | 56789                                     | Name Invalid         |
#      | TC5    | 26  | £$%^&                                     | )(*&^)                                    | Name Invalid         |
#      | TC7    | 40  | abc123                                    | def456                                    | Name Invalid         |
#      | TC8    | 26  | André                                     | ampère                                    | Name Invalid         |
#      | TC9    | 26  | AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB | AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB | Max Character Error  |
#
#  Scenario Outline: Verify the application responds accurately when the surname format is changed
#    Given E2E "<testno>" I am checking to see if I am exempt from paying for prescriptions
#    When E2E my date of birth is "<day>" "<month>" "<year>"
#    And NAM my firstname is "<firstname>" and my lastname is "<lastname>"
#    And E2E my postcode is "<postcode>"
#    Then NAM I will see "<output>"
#
#    Examples:
#      | testno | day | month | year | firstname | lastname      | postcode   | output          |
#  #ppc records
#      | TC10   | 31  | 12    | 2000 | wbvjfyti  | BILLINGWORTH  | LN16 9NY   | Match           |
#      | TC11   | 31  | 12    | 2000 | wbvjfyti  | bIlLiNgWoRtH  | LN16 9NY   | Match           |
#      | TC12   | 31  | 12    | 2000 | wbvjfyti  | billingworth  | LN16 9NY   | Match           |
#      | TC13   | 31  | 12    | 2000 | wbvjfyti  | billing worth | LN16 9NY   | No Match        |
#      | TC14   | 31  | 12    | 2000 | oqvxguem  | Grant Jones   | LN16 9NY   | Match           |
#      | TC15   | 31  | 12    | 2000 | oqvxguem  | Grant  Jones  | LN16 9NY   | No Match        |
#      | TC16   | 31  | 12    | 2000 | oqvxguem  | grantjones    | LN16 9NY   | No Match        |
