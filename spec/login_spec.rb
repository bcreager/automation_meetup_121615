require_relative '../spec_helper'
require 'watir-webdriver'

describe "Login" do
  it "should require login" do
    @browser = Watir::Browser.new :chrome
    width = @browser.execute_script('return screen.width;')
    height = @browser.execute_script('return screen.height;')
    @browser.driver.manage.window.move_to(0, 0)
    @browser.driver.manage.window.resize_to(width, height)
    @browser.goto('localhost:4567/login')
    @browser.button(id: 'login').click
    expect(@browser.url).to eq('http://localhost:4567/login')
    @browser.close
  end

  it "should allow login with valid user and password" do
    @browser = Watir::Browser.new :chrome
    width = @browser.execute_script('return screen.width;')
    height = @browser.execute_script('return screen.height;')
    @browser.driver.manage.window.move_to(0, 0)
    @browser.driver.manage.window.resize_to(width, height)
    @browser.goto('localhost:4567/login')
    @browser.input(id: 'inputEmail').send_keys('test@test.com')
    @browser.input(id: 'inputPassword').send_keys('password')
    @browser.button(id: 'login').click
    expect(@browser.url).to eq('http://localhost:4567/table?')
    @browser.close
  end
end
