require_relative '../page_objects/login_page'
require_relative '../page_objects/chart_page'

describe "Chart" do
  before(:each) do
    @login_page = LoginPage.new @browser
    @chart_page = ChartPage.new @browser
    @login_page.login(CONFIG['email'], CONFIG['password'])
    @chart_page.visit
  end

  it "should display chart on the chart page" do
    expect(@chart_page.chart_exists?).to be_truthy
  end
end