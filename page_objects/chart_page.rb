require_relative '../page_objects/base_page'

class ChartPage < BasePage
  def visit
    @browser.goto('http://localhost:4567/chart')
  end

  def chart_exists?
    @browser.element(tag_name: 'svg').exists?
  end
end