require 'rspec'
require 'page-object'
#This two parameters below load and call a specific gem version.
#gem 'selenium-webdriver', '=2.53.4'
require 'selenium-webdriver'
#require 'capybara/cucumber'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'faker'
require 'pry'
require 'yaml'
require 'capybara/poltergeist'
require 'site_prism'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

#System.setProperty("webdriver.gecko.driver", "C:/geckodriver.exe");
#driver = new FirefoxDriver();
#driver.get("http://vilasboasit.com/tests.html");

#Selenium::WebDriver::Firefox::Binary.path='C:\Program Files\Mozilla Firefox\firefox.exe'

if ENV['chrome']
  Capybara.default_driver = :chrome
  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  end
elsif ENV['firefox']
  Capybara.default_driver = :firefox
  Capybara.register_driver :firefox do |app|
    Capybara::Selenium::Driver.new(app, browser: :firefox)
  end
elsif ENV['ie']
  Capybara.default_driver = :ie
  Capybara.register_driver :ie do |app|
    Capybara::Selenium::Driver.new(app, browser: :internet_explorer)
  end
elsif ENV['headless_debug']
  Capybara.default_driver = :poltergeist_debug
  Capybara.register_driver :poltergeist_debug do |app|
    Capybara::Poltergeist::Driver.new(app, inspector: true)
  end
  Capybara.javascript_driver = :poltergeist_debug
elsif ENV['headless']
  Capybara.javascript_driver = :poltergeist
  Capybara.default_driver = :poltergeist
else
  #Capybara.default_driver = :selenium
  Selenium::WebDriver::Firefox::Binary.path='C:\geckodriver.exe'
end

Capybara.default_max_wait_time = 5
