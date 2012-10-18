require 'spec_helper'

describe "Home Page" do
  subject { page }

  before { visit store_path }
  
  it { should have_selector('title', text: "Swag Shack Booty") }
  it { should have_content("Medieval Hand Blades") } 
  
end
