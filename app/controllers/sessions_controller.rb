class SessionsController < ApplicationController
  def new
    render 'new'
  end
  
  def create
  @user = User.find_by_email(params[:session][:email])
  if @user && @user.authenticate(params[:session][:password])
    log_in @user
    redirect_to 'loggedin'
  else
    flash.now[:danger] = 'Invalid email/password combination'
    redirect_to 'login'
  end
  end
    
  def destroy 
    log_out 
    redirect_to '/' 
  end
end
