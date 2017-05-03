
@allibuttons
Feature: Validate the iframe buttons
  Being a system user
  So I can validate the buttons, select and check boxes
  To assure they work in the iframe buttons as expected

  Background: Access website
    Given I load the website "http://www.vilasboasit.com/tests.html"
      And I am on iframe buttons

  @ibuttons
  Scenario: Validate the ibuttons

    When I click on ibutton "ONE"
      And I click on ibutton "TWO"
      And I click on ibutton "THREE"
    Then I expect no ibutton to be visible
      And ilink "FOUR" should be presented

  @irbuttons
  Scenario: Validate the ireset buttons

    When I click on ibutton "ONE"
      And I click on ibutton "TWO"
      And I click on ibutton "THREE"
      And I click on ibutton "FOUR"
      And I click on ibutton "RESET BUTTONS"
    Then I expect all ibuttons presented

  @isbox
  Scenario: Successfully iselect box

    When I choose the "ExampleOne" ioption
      And I choose the "ExampleTwo" ioption
      And I choose the "ExampleThree" ioption
    Then the "ExampleThree" ioption should be presented

  @icbox
  Scenario: Successfully icheckbox

    When I check the "opt_one" icheckbox
      And I check the "opt_two" icheckbox
      And I check the "opt_three" icheckbox
    Then all icheckboxes should be selected
