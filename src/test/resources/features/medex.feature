Feature: Matex Scenarios
  Scenario: As a user with an active medex I want to check if I am exempt from paying for prescriptions
    Given I am checking to see if I am exempt from paying for prescriptions
    When my date of birth is "01" "01" "1980"
    And my firstname is "testE" and my lastname is "Bellamy"
    And my postcode is "HA3 7TE"
    Then I should see that I am exempt from prescriptions but not dental checkups and treatment
    And the content contains details on how to get help and collecting prescriptions

  Scenario: As a user over with an expired record I want to check if I am exempt from paying for prescriptions
    Given I am checking to see if I am exempt from paying for prescriptions
    When my date of birth is "01" "01" "1970"
    And my firstname is "testF" and my lastname is "Walmsley"
    And my postcode is "GU18 5YQ"
    Then I should see we cannot match you to our records

  Scenario: As a user over with an expired record I want to check if I am exempt from paying for prescriptions
    Given I am checking to see if I am exempt from paying for prescriptions
    When my date of birth is "21" "09" "1987"
    And my firstname is "testG" and my lastname is "Kashif"
    And my postcode is "UB3 4BG"
    Then I should see we cannot match you to our records

