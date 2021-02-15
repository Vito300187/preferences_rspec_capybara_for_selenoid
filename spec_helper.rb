# frozen_string_literal: true

require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'selenium/webdriver'
require 'pry'

Capybara.register_driver :remote_chrome do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome
  caps[:browser_name] = 'chrome'
  caps[:version] = '88.0'
  caps['enableVNC'] = true
  caps['enableVideo'] = true
  # caps['videoName'] = 'example_name'
  # caps['videoScreenSize'] = string
  # caps['screenResolution'] = <width>x<height>x<colors-depth>
  # caps['videoFrameRate'] = '24'
  opts = {
    browser: :remote,
    url: 'http://localhost:4444/wd/hub',
    desired_capabilities: caps
  }
  Capybara::Selenium::Driver.new(app, opts)
end

Capybara.configure do |config|
  config.default_driver = :remote_chrome
  config.javascript_driver = :remote_chrome
  config.default_max_wait_time = 10
end

RSpec.configure { Capybara.page.driver.browser.manage.window.maximize }
