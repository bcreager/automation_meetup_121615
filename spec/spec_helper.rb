require 'rspec'
require 'watir-webdriver'
require 'yaml'

CONFIG = YAML.load_file('config/config.yml')

RSpec.configure do |config|
  config.before(:each) do
    setup_browser
    @browser.goto(CONFIG['url'])
  end

  config.after(:each) do
    @browser.close
  end
end

def setup_browser
  CONFIG['browser'] == 'firefox' ? setup_firefox : setup_chrome

  width = @browser.execute_script('return screen.width;')
  height = @browser.execute_script('return screen.height;')
  @browser.driver.manage.window.move_to(0, 0)
  @browser.driver.manage.window.resize_to(width, height)
  @browser.driver.manage.timeouts.implicit_wait = 3
end

def setup_firefox
  @profile.native_events = true
  @browser = Watir::Browser.new :firefox, profile: @profile
end

def setup_chrome
  switches = ['--always-authorize-plugins']
  @browser = Watir::Browser.new :chrome, switches: switches
end



