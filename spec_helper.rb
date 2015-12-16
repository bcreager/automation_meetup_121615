require 'rspec'
require 'watir-webdriver'

RSpec.configure do |config|
  config.color = true

  config.before(:each) do
    @browser = Watir::Browser.new :chrome
    width = @browser.execute_script('return screen.width;')
    height = @browser.execute_script('return screen.height;')
    @browser.driver.manage.window.move_to(0, 0)
    @browser.driver.manage.window.resize_to(width, height)
    @browser.goto('localhost:4567/login')
  end

  config.after(:each) do
    @browser.close
  end
end


