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
  #find('#panel_body_one button[class$="lg btn-default"]').click
  #click_button if text = button
  #find('div[class$=text-center] #btn_one').click
  #click_button button
  #find('button').click
end

When(/^I choose the "([^"]*)" option$/) do |op|
  #puts verify = op
  select(op, from:"select_box")
end

When(/^I check the "([^"]*)" checkbox$/) do |checkbox|
  #puts value @buttons.checkbox_one.text
  #check("value")
  check(checkbox)
end

#Expected Result

Then(/^I expect no button to be visible$/) do
  assert_no_selector("#btn_one")
  assert_no_selector("#btn_two")
  assert_no_selector("#btn_three")
  #expect(page).to have_css('#btn_one', visible: :hidden)
  #expect(page).not_to have_css('#btn_three')
  #find(:css, "#btn_three").should be_visible
  #assert_no_selector("btn_one")
  #find("#btn_one").should_not be_visible
end

Then(/^link "([^"]*)" should be presented$/) do |link|
  #sleep(5)
  assert_selector("#btn_link")
  #expect(page).to have_css('#btn_link')
  #expect(page).to have_css("btn_link:enabled")
  #find(:css, "#btn_link").should be_visible
end

Then(/^I expect all buttons presented$/) do
  #expect(page).to have_css('#btn_one')
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
