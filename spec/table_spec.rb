require_relative '../spec_helper'
require 'watir-webdriver'

describe "Table" do
  before(:each) do
    @browser = Watir::Browser.new :chrome
    width = @browser.execute_script('return screen.width;')
    height = @browser.execute_script('return screen.height;')
    @browser.driver.manage.window.move_to(0, 0)
    @browser.driver.manage.window.resize_to(width, height)
    @browser.goto('localhost:4567/login')
    @browser.input(id: 'inputEmail').send_keys('test@test.com')
    @browser.input(id: 'inputPassword').send_keys('password')
    @browser.button(id: 'login').click
  end

  it "should show table data on table page" do
    rows = @browser.trs
    expect(rows.count).to eq(10)
  end

  after(:each) do
    @browser.close
  end
end