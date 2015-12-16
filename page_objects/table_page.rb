require_relative '../page_objects/base_page'

class TablePage < BasePage
  def visit
    @browser.goto('http://localhost:4567/table')
  end

  def table_rows
    @browser.trs
  end
end