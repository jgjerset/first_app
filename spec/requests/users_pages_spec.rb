require 'spec_helper'

describe "User Pages" do
  
  it "should have the content" do 
      visit '/login' 
      fill_in 'Name', :with => 'Jon'
      fill_in 'Password', :with => 'testing1'
      click_button 'Login'
      #save_and_open_page
      page.should have_link('Logout', href: logout_path)   
      page.should have_content('Medieval')
      
end
 
  
end
  
