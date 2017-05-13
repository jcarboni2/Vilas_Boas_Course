require 'rspec'
require 'page-object'
#This two parameters below load and call a specific gem version.
gem 'selenium-webdriver', '=3.4.0'
require 'selenium-webdriver'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'faker'
require 'pry'
require 'yaml'
require 'capybara/poltergeist'
require 'site_prism'
require_relative 'helpers.rb'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(Helpers)

BROWSER = ENV['BROWSER']

if BROWSER.eql?('chrome')
  Capybara.default_driver = :chrome
  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  end
  elsif BROWSER.eql?('firefox')
    Capybara.default_driver = :firefox
    Capybara.register_driver :firefox do |app|
      Capybara::Selenium::Driver.new(app, browser: :firefox)
    end
  elsif BROWSER.eql?('ie')
    Capybara.default_driver = :ie
    Capybara.register_driver :ie do |app|
      Capybara::Selenium::Driver.new(app, browser: :internet_explorer)
    end
  elsif BROWSER.eql?('headless_debug')
    Capybara.default_driver = :poltergeist_debug
    Capybara.register_driver :poltergeist_debug do |app|
      Capybara::Poltergeist::Driver.new(app, inspector: true)
    end
    Capybara.javascript_driver = :poltergeist_debug
  elsif BROWSER.eql?('headless')
    Capybara.javascript_driver = :poltergeist
    Capybara.default_driver = :poltergeist
  else
    Capybara.default_driver = :selenium
end

Capybara.default_max_wait_time = 5
