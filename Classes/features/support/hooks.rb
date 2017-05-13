
Before do
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
end
