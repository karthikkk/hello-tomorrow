Feature: As a Hello tomorrow user, I should see a hello greeting on my homepage

  Scenario: Check greeting
    Given I am a hello user
    When I  open the browser
    And I got to hello website
    Then I should see the greeting 'hello tomorrow'