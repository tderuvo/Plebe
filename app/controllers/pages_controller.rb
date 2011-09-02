class PagesController < ApplicationController
  def home
    @title = "Home"
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

end
