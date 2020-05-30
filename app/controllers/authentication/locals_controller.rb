
class Authentication::LocalsController < ApplicationController
  before_action :set_authentication_local, only: [:show, :edit, :update, :destroy]

  def index
    @authentication_locals = Authentication::Local.all
  end

  def show
  end

  def new
    @authentication_local = Authentication::Local.new
  end

  def edit
  end

  def create
    @user = User.where(:email => params[:email])[0]

    if !@user
      @user = User.create(:email => authentication_local_params[:email])
    end

    @authentication_local_params = {:email => authentication_local_params[:email], :password_digest => User.hash_password(authentication_local_params[:password_digest])}
    @authentication_local_params[:user_id] = @user.id
    @authentication_local = Authentication::Local.new(@authentication_local_params)

    if @authentication_local.save
      redirect_to @authentication_local, notice: 'Local was successfully created.' 
    else
      render :new 
    end
  end

  def update
    @authentication_local_params = {:email => authentication_local_params[:email], :password_digest => User.hash_password(authentication_local_params[:password_digest])}
    if @authentication_local.update(@authentication_local_params)
      redirect_to @authentication_local, notice: 'Local was successfully updated.' 
    else
      render :edit
    end
  end

  def destroy
    @authentication_local.destroy
    redirect_to authentication_locals_url, notice: 'Local was successfully destroyed.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authentication_local
      @authentication_local = Authentication::Local.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authentication_local_params
      params.require(:authentication_local).permit(:email, :password_digest, :password_confirmation, :user_id)
    end
end
