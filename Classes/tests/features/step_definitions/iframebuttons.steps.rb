#encoding: utf-8

#Pre-Requisite

Given(/^I am on iframe buttons$/) do
    expect(@ibuttons.iframe_buttons.text).to eql 'IFRAME BUTTONS'
end

#Action

When(/^I click on ibutton "([^"]*)"$/) do |ibutton|
  within_frame(all('iframe')[0]) do
    if ibutton == "ONE"
      @ibuttons.ibutton_one.click
    elsif ibutton == "TWO"
      @ibuttons.ibutton_two.click
    elsif ibutton == "THREE"
      @ibuttons.ibutton_three.click
    elsif ibutton == "FOUR"
      @ibuttons.ibutton_four.click
    else ibutton == "RESET BUTTONS"
      @ibuttons.ireset_button.click
    end
  end
end

When(/^I choose the "([^"]*)" ioption$/) do |iop|
  within_frame(all('iframe')[0]) do
    select(iop, from:"select_box")
  end
end

When(/^I check the "([^"]*)" icheckbox$/) do |icheckbox|
  within_frame(all('iframe')[0]) do
    check(icheckbox)
  end
end

#Expected Result

Then(/^I expect no ibutton to be visible$/) do
  within_frame(all('iframe')[0]) do
    sleep 5
    assert_no_selector("#btn_one")
    assert_no_selector("#btn_two")
    assert_no_selector("#btn_three")
  end
end

Then(/^ilink "([^"]*)" should be presented$/) do |link|
  within_frame(all('iframe')[0]) do
    assert_selector("#btn_link")
  end
end

Then(/^I expect all ibuttons presented$/) do
  within_frame(all('iframe')[0]) do
    assert_selector("#btn_one")
    assert_selector("#btn_two")
    assert_selector("#btn_three")
    assert_selector("#btn_link")
  end
end

Then(/^the "([^"]*)" ioption should be presented$/) do |opt|
  within_frame(all('iframe')[0]) do
    expect(page).to have_select("select_box", :selected => opt)
  end
end

Then(/^all icheckboxes should be selected$/) do
  within_frame(all('iframe')[0]) do
    expect(page.has_checked_field?("opt_one")).to eql true
    expect(page.has_checked_field?("opt_two")).to eql true
    expect(page.has_checked_field?("opt_three")).to eql true
  end
end
