@allfields
Feature: Validate the form fields
  Being a system user
  So I can validate the fields
  To assure thay work as expected

  Background: Access website
    Given I load the website "http://www.vilasboasit.com/tests.html"
      And I am on fields panel

  @rfields
  Scenario: Clean form fields partially

      And I fill the YourFirstName field in with "XPTO"
    When I click on "Reset Fields" button
    Then I expect the "#first_name" is empty
