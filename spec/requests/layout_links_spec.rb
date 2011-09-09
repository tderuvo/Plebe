require 'spec_helper'

describe "LayoutLinks" do
  
  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end
  
  it "should have a Home page at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end
  
  it "should have a Home page at '/profile'" do
    get '/profile'
    response.should have_selector('title', :content => "Profile")
  end
  
  it "should have a Home page at '/signout'" do
    get '/signout'
    response.should have_selector('title', :content => "Sign out")
  end
  
  it "should have a Home page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end
  
  it "should have a Home page at '/support'" do
    get '/support'
    response.should have_selector('title', :content => "Support")
  end
  
  it "should have a Home page at '/developers'" do
    get '/developers'
    response.should have_selector('title', :content => "Developers")
  end
  
  it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end
  
  it "should have a signin page at '/signin'" do
    get '/signin'
    response.should have_selector('title', :content => "Sign in")
  end
  
  it "should have the right links on the layout" do
    visit root_path
    response.should have_selector('title', :content => "Home")
    click_link "About"
    response.should have_selector('title', :content => "About")
    click_link "Home"
    response.should have_selector('title', :content => "Home")
    click_link "Sign up now!"
    response.should have_selector('title', :content => "Sign up")
    response.should have_selector('a[href="/"]>img')
    click_link "Developers"
    response.should have_selector('title', :content => "Developers")
    click_link "Support"
    response.should have_selector('title', :content => "Support")
    click_link "Help"
    response.should have_selector('title', :content => "Help")
  end
  
end