#encoding: utf-8

#Pre-Requisite

Given(/^I am on buttons panel$/) do
  expect(@buttons.buttons_panel.text).to eql 'BUTTONS'
end

#Action

When(/^I click on button "([^"]*)"$/) do |button|
  if button == "ONE"
    @buttons.button_one.click
  elsif button == "TWO"
    @buttons.button_two.click
  elsif button == "THREE"
    @buttons.button_three.click
  elsif button == "FOUR"
    @buttons.button_four.click
  else button == "RESET BUTTONS"
    @buttons.reset_button.click
  end
end

When(/^I choose the "([^"]*)" option$/) do |op|
  select(op, from:"select_box")
end

When(/^I check the "([^"]*)" checkbox$/) do |checkbox|
  check(checkbox)
end

#Expected Result

Then(/^I expect no button to be visible$/) do
  assert_no_selector("#btn_one")
  assert_no_selector("#btn_two")
  assert_no_selector("#btn_three")
end

Then(/^link "([^"]*)" should be presented$/) do |link|
  assert_selector("#btn_link")
end

Then(/^I expect all buttons presented$/) do
  assert_selector("#btn_one")
  assert_selector("#btn_two")
  assert_selector("#btn_three")
  assert_selector("#btn_link")
end

Then(/^the "([^"]*)" option should be presented$/) do |opt|
  expect(page).to have_select("select_box", :selected => opt)
end

Then(/^all checkboxes should be selected$/) do
  expect(page.has_checked_field?("opt_one")).to eql true
  expect(page.has_checked_field?("opt_two")).to eql true
  expect(page.has_checked_field?("opt_three")).to eql true
end
