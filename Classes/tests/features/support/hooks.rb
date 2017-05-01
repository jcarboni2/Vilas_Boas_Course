#require 'selenium-webdriver'

Before do
  @home = HomePage.new
  @home.load
  @buttons = ButtonsPage.new
  @fields = FieldsPage.new
  @images = ImagesPage.new
  @ibuttons = IbuttonsPage.new
  @ifields = IfieldsPage.new
end
