class UserController < ApplicationController
  def home
  @title = "Your Home Page"
  end

  def register
  @title = "Register a New Account"
  end

  def login
  @title = "Login"
  end

  def logout
  @title = "You have been logged out"
  end
end
