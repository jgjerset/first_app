require 'spec_helper'

describe "LoginPage" do
  it "should have login name and password" do
    visit login_path
    
    page.should have_selector('legend', text: 'Please Log In')
    page.should have_selector('label', text: 'Name')
    
  end
end
