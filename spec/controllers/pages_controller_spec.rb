require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                                    :content => "Plebe | Home")
    end
  end

  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'help'
      response.should have_selector("title",
                                   :content => "Plebe | Help")
    end
  end

  describe "GET 'profile'" do
    it "should be successful" do
      get 'profile'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'profile'
      response.should have_selector("title",
                                   :content => "Plebe | Profile")
    end
  end

  describe "GET 'signout'" do
    it "should be successful" do
      get 'signout'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'signout'
      response.should have_selector("title",
                                   :content => "Plebe | Sign out")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
      it "should have the right title" do
        get 'about'
        response.should have_selector("title",
                                     :content => "Plebe | About")
    end
  end

  describe "GET 'support'" do
    it "should be successful" do
      get 'support'
      response.should be_success
    end

   it "should have the right title" do
      get 'support'
      response.should have_selector("title",
                                   :content => "Plebe | Support")
    end    
  end

  describe "GET 'developers'" do
    it "should be successful" do
      get 'developers'
      response.should be_success
    end
    
   it "should have the right title" do
      get 'developers'
      response.should have_selector("title",
                                   :content => "Plebe | Developers")
    end    
  end

end
