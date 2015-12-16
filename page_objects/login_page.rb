require_relative 'base_page'

class LoginPage < BasePage
  def visit
    @browser.goto("#{CONFIG['url']}/login")
  end

  def login(email, password)
    email_field.send_keys(email)
    password_field.send_keys(password)
    login_button.click
  end

  def email_field
    @browser.input(id: 'inputEmail')
  end

  def password_field
    @browser.input(id: 'inputPassword')

  end

  def login_button
    @browser.button(id: 'login')
  end
end