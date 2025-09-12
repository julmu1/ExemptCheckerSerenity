
Feature: Validate functionality on start page
  Scenario Outline: Validate links on start page
    Given I am checking start page
    When I choose the "<link>"
    Then I should see "<screen>"

    Examples:
      | link                    | screen                         |
      | Privacy                 | Privacy                        |
      | Cookies                 | Cookies                        |
      | Terms And Conditions    | Terms And Conditions           |
      | Accessibility statement | Accessibility statement        |
