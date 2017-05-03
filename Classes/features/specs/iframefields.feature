
@allifields
Feature: Validate the fields in the iframe_panel
  Being a system user
  So I can validate the filling in of the fields
  To assure the fields work in the iframe panel

  Background: Access website
    Given I load the website "http://www.vilasboasit.com/tests.html"
      And I am on iframe fields

  @ifields
  Scenario: Clean form fields partially

      And I fill the iYourFirstName with "XPTO"
    When  I Click on the ireset button
    Then I expected "#first_name" ifield should be empty
