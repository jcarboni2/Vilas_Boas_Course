#encoding: utf-8

#Pre-Requisite

Given(/^I am on fields panel$/) do
  expect(@fields.fields_panel.text).to eql 'FIELDS'
end


Given(/^I fill the YourFirtName field in with "([^"]*)"$/) do |value|
  fill_in :placeholder => "YourFirstName", :with => value
end

#Action

When(/^I click on "([^"]*)" button$/) do |button|
  @fields.reset_fields.click
end

#Expected Result

Then(/^I expect the "([^"]*)" is empty$/) do |field|
  raise "field not empty" if find(field).value != ""
end
