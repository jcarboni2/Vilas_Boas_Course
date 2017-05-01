
@allimages
Feature: Validate the panel images
  Being a system user
  So I can validate the images
  To assure they work as expect in the panel

  @simages
  Scenario: Successfully presented images

    Given I am on image assertion panel
    When I check the images
    Then All images should be presented
