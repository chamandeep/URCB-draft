class PagesController < ApplicationController
  def home
  @title = "The University Resource Centre For The Blind"
  end
  
def login
@title = "Login"
  if request.post?
      @user = User.new(user_params)
	        user = User.find_by_email_and_password(@user.email, @user.password)
			      if user
        session[:user_id] = user.id
		redirect_to(:controller => 'user', :action => 'home')
	
		end
  end
end

  def about
  @title = "About Us"
  end

  def contact
  @title = "Contact Us"
  end
  
  private
  def user_params
  params.require(:user).permit(:email, :password)
  end
end
