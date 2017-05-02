#encoding: utf-8

#Pre-Requitite
Given(/^I am on image assertion panel$/) do
  page.has_content?(@images.image_panel.text)
end

#Action

When(/^I check the images$/) do
   @images.ruby_image.text
   @images.html_css_js_images.text
   @images.cucumber_image.text
   @images.selenium_image.text

end

#Expected Result

Then(/^All images should be presented$/) do
  expect (page.has_content?(@images.ruby_image.text))
  expect (page.has_content?(@images.html_css_js_images.text))
  expect (page.has_content?(@images.cucumber_image.text))
  expect (page.has_content?(@images.selenium_image.text))
end
