
@allbuttons
Feature: Validate the painel buttons
  Being a system user
  So I can validate the buttons, select and check boxes
  To assure they work in the buttons panel as expected

  Background: Access website
    Given I load the website "http://www.vilasboasit.com/tests.html"
      And I am on buttons panel

  @buttons
  Scenario: Validate the buttons

    When I click on button "ONE"
      And I click on button "TWO"
      And I click on button "THREE"
    Then I expect no button to be visible
      And link "FOUR" should be presented

  @rbuttons
  Scenario: Validate the reset button

    When I click on button "ONE"
      And I click on button "TWO"
      And I click on button "THREE"
      And I click on button "FOUR"
      And I click on button "RESET BUTTONS"
    Then I expect all buttons presented

  @sbox
  Scenario: Successfully select option

    When I choose the "ExampleOne" option
      And I choose the "ExampleTwo" option
      And I choose the "ExampleThree" option
    Then the "ExampleThree" option should be presented

  @cbox
  Scenario: Successfully checkbox

    When I check the "OptionOne" checkbox
      And I check the "OptionTwo" checkbox
      And I check the "OptionThree" checkbox
    Then all checkboxes should be selected
