class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    logger.debug "DEBUG email: "+ params[:signin][:email]
    logger.debug "DEBUG password: "+ params[:signin][:password]
    #logger.debug "DEBUG auth_token: "+ params[:signin][:auth_token]
    
    user = User.find_by_email(params[:signin][:email]) 
    if user && user.authenticate(params[:signin][:password])
      if params[:remember_me]
        cookies.permanent[:auth_token] = user.auth_token
      else 
        cookies.permanent[:auth_token] = user.auth_token
      end 
      redirect_to root_url, notice: "Logged In!"
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end 
  end 
  
  def destroy
    cookies.delete(:auth_token)
    redirect_to root_url, notice: "Logged out!"
  end
  
end
