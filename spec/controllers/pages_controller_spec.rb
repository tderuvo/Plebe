require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
  end

  describe "GET 'profile'" do
    it "should be successful" do
      get 'profile'
      response.should be_success
    end
  end

  describe "GET 'signout'" do
    it "should be successful" do
      get 'signout'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'support'" do
    it "should be successful" do
      get 'support'
      response.should be_success
    end
  end

  describe "GET 'developers'" do
    it "should be successful" do
      get 'developers'
      response.should be_success
    end
  end

end
