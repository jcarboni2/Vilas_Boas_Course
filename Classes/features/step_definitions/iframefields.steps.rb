#encoding: utf-8

#Pre-Requisite

Given(/^I am on iframe fields$/) do
    expect(@ifields.iframe_fields.text).to eql 'IFRAME FIELDS'
end

Given(/^I fill the iYourFirstName with "([^"]*)"$/) do |value|
  within_frame(all('iframe')[1]) do
    @ifields.ifirst_name.set value
  end
end

#Action

When(/^I Click on the ireset button$/) do
  within_frame(all('iframe')[1]) do
    @ifields.ireset_fields.click
  end
end

#Expected Result

Then(/^I expected "([^"]*)" ifield should be empty$/) do |field|
  within_frame(all('iframe')[1]) do
    raise "Field not empty" if find(field).value != ""
  end
end
