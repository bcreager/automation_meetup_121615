require_relative '../spec_helper'
require_relative '../page_objects/login_page'
require_relative '../page_objects/table_page'

describe "Table" do
  before(:each) do
    @login_page = LoginPage.new @browser
    @table_page = TablePage.new @browser
    @login_page.login('test@test.com', 'password')
    @table_page.visit
  end

  it "should show table data on table page" do
    expect(@table_page.table_rows.count).to eq(10)
  end
end