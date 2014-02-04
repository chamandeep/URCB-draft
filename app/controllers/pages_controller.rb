class PagesController < ApplicationController
  def home
  @title = "The University Resource Centre For The Blind"
  end
  

  def about
  @title = "About Us"
  end

  def contact
  @title = "Contact Us"
  end
end
