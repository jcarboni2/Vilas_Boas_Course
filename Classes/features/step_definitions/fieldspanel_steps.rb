#encoding: utf-8

#Pre-Requisite

Given(/^I am on fields panel$/) do
  expect(@fields.fields_panel.text).to eql 'FIELDS'
end

Given(/^I fill the YourFirstName field in with "([^"]*)"$/) do |field|
  fill_in :placeholder => "YourFirstName", :with => field
end

#Action

When(/^I click on "([^"]*)" button$/) do |button|
  #find('#reset_fields').click
  @fields.reset_fields.click
end

#Expected Result

Then(/^I expect the "([^"]*)" is empty$/) do |field|
  # value = find(field).value
  # if value == ""
  # else
  #   raise "field not empty"
  # end
  raise "field not empty" if find(field).value != ""
end
