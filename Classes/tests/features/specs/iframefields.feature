
@allifields
Feature: Validate the fields in the iframe_panel
  Being a system user
  So I can validate the filling in of the fields
  To assure the fields work in the iframe panel

  @ifields
  Scenario: Clean form fields partially

    Given I am on iframe fields
      And I fill the iYourFirstName with "XPTO"
    When  I Click on the ireset button
    Then I expected "#first_name" ifield should be empty
