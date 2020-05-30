class SessionsController < ApplicationController

    # NEED TO CREATE AN AUTHENTICATE FUNCTION IN USER and add before actions to protect routes

  def new
  end
  
  def create
    @user = User.find_by(email: params[:email].downcase)
    if @user && @user.authenticate(params[:password])
      log_in @user
      redirect_back_or @user
    else
      render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end

end
