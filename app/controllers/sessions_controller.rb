class SessionsController < ApplicationController

  def new
  end
  
  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && User.authenticate(@user.id, params[:session][:password])
      if log_in(@user)
        flash[:notice] = "Welcome #{@user.name if @user.name} !"
        redirect_to @user
      else    
        flash[:alert] = "log in failed" 
        render 'new'
      end
    else
      flash[:alert] = "Failed authentication"
      render  'new'
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end

  private

  def user_params
    params.require(:session).permit(:password, :email)
  end

end
