require_relative "../spec_helper"

describe "Chart" do
  before(:each) do
    @browser.goto('localhost:4567/chart')
  end

  it "should display chart on the chart page" do
    expect(@browser.element(tag_name: 'svg').exists?).to be_truthy
  end
end