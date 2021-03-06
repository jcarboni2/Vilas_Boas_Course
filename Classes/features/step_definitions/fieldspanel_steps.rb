#encoding: utf-8

#Pre-Requisite

Given(/^I am on fields panel$/) do
  expect(@fields.fields_panel.text).to eql 'FIELDS'
end

Given(/^I fill the YourFirstName field in with "([^"]*)"$/) do |field|
  @fields.first_name.set field
end

#Action

When(/^I click on "([^"]*)" button$/) do |button|
  @fields.reset_fields.click
end

#Expected Result

Then(/^I expect the "([^"]*)" is empty$/) do |field|
  raise "field not empty" if find(field).value != ""
end
