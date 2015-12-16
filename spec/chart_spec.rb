require_relative '../spec_helper'
require_relative '../page_objects/chart_page'

describe "Chart" do
  before(:each) do
    @chart_page = ChartPage.new @browser
    @chart_page.visit
  end

  it "should display chart on the chart page" do
    expect(@chart_page.chart_exists?).to be_truthy
  end
end