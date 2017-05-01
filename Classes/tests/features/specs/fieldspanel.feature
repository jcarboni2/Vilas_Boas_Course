@allfields
Feature: Validate the form fields
  Being a system user
  So I can validate the fields
  To assure thay work as expected

  @rfields
  Scenario: Clean form fields partially

    Given I am on fields panel
      And I fill the YourFirtName field in with "XPTO"
    When I click on "Reset Fields" button
    Then I expect the "#first_name" is empty
