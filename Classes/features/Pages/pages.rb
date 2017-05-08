

# class HomePage < SitePrism::Page
#   set_url "http://www.vilasboasit.com/tests.html"
# end

class ButtonsPage < SitePrism::Page
  element :buttons_panel, '#panel_heading_one #heading_one'
  element :button_one, '#panel_body_one #btn_one'
  element :button_two, '#panel_body_one #btn_two'
  element :button_three, '#panel_body_one #btn_three'
  element :button_four, '#panel_body_one #btn_link'
  element :reset_button, '#panel_body_one #reset_buttons'
  element :option_dropdown, '#panel_body_one select[id=select_box]'
  element :checkbox_one, '#panel_body_one #opt_one'
  element :checkbox_two, '#panel_body_one #opt_two'
  element :checkbox_three, '#panel_body_one #opt_three'
end

class FieldsPage < SitePrism::Page
  element :fields_panel, '#panel_heading_two #heading_two'
  element :first_name, '#panel_body_two input[placeholder=YourFirstName]'
  element :reset_fields, '#panel_body_two button[id=reset_fields]'
end

class ImagesPage < SitePrism::Page
  element :image_panel, '#panel_heading_three #heading_one'
  element :ruby_image, "#panel_body_three img[src*='Ruby.gif']"
  element :html_css_js_images, "#panel_body_three img[src$='JavaScript.png']"
  element :cucumber_image, "#panel_body_three img[src^='http://www.ymc.ch/wp-content']"
  element :selenium_image, "#panel_body_three img[src*='courses-techtutorr.jpg']"
end

class IbuttonsPage < SitePrism::Page
  element :iframe_buttons, '#iframe_panel_heading #heading_iframe'
  element :ibutton_one, '#page-top #btn_one'
  element :ibutton_two, '#page-top #btn_two'
  element :ibutton_three, '#page-top #btn_three'
  element :ibutton_four, '#page-top #btn_link'
  element :ireset_button, '#page-top #reset_buttons'
  element :ioption_dropdown, '#page-top button select[id=select_box]'
  element :icheckbox_one, '#page-top button #opt_one'
  element :icheckbox_two, '#page-top button #opt_two'
  element :icheckbox_three, '#page-top button #opt_three'
end

class IfieldsPage < SitePrism::Page
  element :iframe_fields, '#iframe_panel_heading_two #heading_iframe_two'
  element :ifirst_name, '#page-top input[placeholder=YourFirstName]'
  element :ireset_fields, '#page-top button[id=reset_fields]'
end
