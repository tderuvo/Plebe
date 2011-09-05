class PagesController < ApplicationController
  def home
    @title = "Home"
    @comingsoon = "1"
  end

  def help
    @title = "Help"
  end

  def profile
    @title = "Profile"
  end

  def signout
    @title = "Sign out"
  end

  def about
    @title = "About"
  end

  def support
    @title = "Support"
  end

  def developers
    @title = "Developers"
  end
  
  def comingsoon
    render :layout => false
    @title = "Home"
  end

end
