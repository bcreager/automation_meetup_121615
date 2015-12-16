require_relative '../page_objects/base_page'

class TablePage < BasePage
  def visit
    @browser.goto("#{CONFIG['url']}/table")
  end

  def table_rows
    @browser.trs
  end
end