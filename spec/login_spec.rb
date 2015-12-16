require_relative '../page_objects/login_page'

describe "Login" do
  before(:each) do
    @login_page = LoginPage.new @browser
    @login_page.visit
  end

  it "should require login" do
    @login_page.login_button.click
    expect(@login_page.current_url).to eq('http://localhost:4567/login')
  end

  it "should allow login with valid user and password" do
    @login_page.login(CONFIG['email'],CONFIG['password'])
    expect(@login_page.current_url).to eq('http://localhost:4567/table?')
  end
end
