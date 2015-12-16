require 'watir-webdriver'

class BasePage
  def initialize(browser)
    @browser = browser
  end

  def nav_chart
    @browser.link(text: 'Chart')
  end

  def nav_table
    @browser.link(text: 'Table')
  end

  def nav_logout
    @browser.link(text: 'Logout')
  end

  def current_url
    @browser.url
  end
end