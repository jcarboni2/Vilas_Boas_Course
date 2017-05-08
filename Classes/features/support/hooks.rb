#require 'selenium-webdriver'

Before do
  #visit "http://www.vilasboasit.com/tests.html"
  # @home = HomePage.new
  # @home.load
  @buttons = ButtonsPage.new
  @fields = FieldsPage.new
  @images = ImagesPage.new
  @ibuttons = IbuttonsPage.new
  @ifields = IfieldsPage.new
end

After do |scenario|

    if scenario.failed?
        take_screenshot(scenario.name)
    end
    #take_screenshot(scenario.name)
end
