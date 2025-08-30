Feature: Happy path test
  Scenario: As a user over 30 I want to check if I am exempt from paying for prescriptions
   Given I am checking to see if I am exempt from paying for prescriptions
    When my date of birth is "21" "09" "1995"
    And my firstname is "testE" and my lastname is "Smith"
    And my postcode is "L15 3JY"
    Then I should see that I am exempt from prescriptions and dental check-ups

  Scenario: As a user over 30 I want to check if I am exempt from paying for prescriptions
    Given I am checking to see if I am exempt from paying for prescriptions
    When my date of birth is "21" "09" "1995"
    And my firstname is "testB" and my lastname is "Swallow"
    And my postcode is "L15 3JY"
    Then I should see that I am exempt from prescriptions and dental check-ups

  Scenario: As a user over 30 I want to check if I am exempt from paying for prescriptions
    Given I am checking to see if I am exempt from paying for prescriptions
    When my date of birth is "21" "09" "1995"
    And my firstname is "testC" and my lastname is "Hughes"
    And my postcode is "L15 3JY"
    Then I should see we cannot match you to our records


