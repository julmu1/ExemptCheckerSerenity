#Feature:Cookie banner preference change and navigation
#
#  Scenario Outline: Cookie banner preference change and navigation
#    Given I am on the "<screen>" page
#    When I select "<cookie_banner>" from the cookie banner
#    And I change my cookie preference to "<cookie_preference>"
#    Then my cookie settings are saved
#    And I return to "<screen>"
#
#    Examples:
#    | screen              | cookie_banner              | cookie_preference          |
#    | start               | use_analytics_cookies      | use_analytics_cookies      |
#    | start               | dont_use_analytics_cookies | dont_use_analytics_cookies |
#    | result_under_16     | use_analytics_cookies      | dont_use_analytics_cookies |
#    | name                | dont_use_analytics_cookies | use_analytics_cookies      |
