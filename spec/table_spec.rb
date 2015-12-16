require_relative '../spec_helper'

describe "Table" do
  before(:each) do
    @browser.input(id: 'inputEmail').send_keys('test@test.com')
    @browser.input(id: 'inputPassword').send_keys('password')
    @browser.button(id: 'login').click
  end

  it "should show table data on table page" do
    rows = @browser.trs
    expect(rows.count).to eq(10)
  end
end