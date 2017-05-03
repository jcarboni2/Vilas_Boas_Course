
@allimages
Feature: Validate the panel images
  Being a system user
  So I can validate the images
  To assure they work as expect in the panel

  Background: Access website
    Given I load the website "http://www.vilasboasit.com/tests.html"
      And I am on image assertion panel

  @simages
  Scenario: Successfully presented images

    When I check the images
    Then All images should be presented
