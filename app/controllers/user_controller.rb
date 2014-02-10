class UserController < ApplicationController
  def home
  @title = "Your Home Page"
  end

  def register
  @title = "Register a New Account"
  if request.post?
    @user = User.new(user_params)
 if @user.save
         @user.login!(session)
  flash[:notice] = "User created successfully."
      redirect_to(:action => 'home')
    else
	flash[:notice] = "User not created successfully."
      render('register')
    end
  end
end
 
        def create
  @user = User.new(user_params)
  
  end
    
  def logout
  @title = "You have been logged out"
            User.logout!(session)
    redirect_to :controller => :pages, :action => :home
      end


  
  private
  def user_params
  params.require(:user).permit(:firstName, :lastName, :dob, :email,  :password,  :bio, :address1, :address2, :town, :county, :postcode, :contactNumber)
  end
end