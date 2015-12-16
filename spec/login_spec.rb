require_relative '../spec_helper'

describe "Login" do
  it "should require login" do
    @browser.button(id: 'login').click
    expect(@browser.url).to eq('http://localhost:4567/login')
  end

  it "should allow login with valid user and password" do
    @browser.input(id: 'inputEmail').send_keys('test@test.com')
    @browser.input(id: 'inputPassword').send_keys('password')
    @browser.button(id: 'login').click
    expect(@browser.url).to eq('http://localhost:4567/table?')
  end
end
