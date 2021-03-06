class PasswordResetsController < ApplicationController
  def new
  end
  
  def create 
    user = User.find_by_email(params[:reset][:email])

    if user.nil?
      redirect_to root_url, :notice => "There was a problem with your email."
    else 
      logger.debug "PRINT DEBUGGER: "+user.to_s
      user.send_password_reset if user
      redirect_to root_url, :notice => "Email sent with password reset instructions."
    end 
  end 
  
  def edit 
   @user = User.find_by_password_reset_token!(params[:id])
  end 
  
  def update
    @user = User.find_by_password_reset_token!(params[:id])
    if @user.password_reset_sent_at < 2.hours.ago
      redirect_to new_password_reset_path, :alert => "Password &crarr; 
        reset has expired."
    elsif @user.update_attributes(params.permit![:user])
      redirect_to root_url, :notice => "Password has been reset."
    else
      render :edit
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
