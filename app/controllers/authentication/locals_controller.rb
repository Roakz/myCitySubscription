
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

    # create validation for authentications and users in there models and validate the information.

    @user = User.where(:email => params[:email])

    if !@user
      @user = User.create(:email => authentication_local_params[:email])
    end

    @authentication_local_params = {:email => authentication_local_params[:email], :password_digest => User.hash_password(authentication_local_params[:password_digest])}
    @authentication_local_params[:user_id] = @user.id
    @authentication_local = Authentication::Local.new(@authentication_local_params)

    respond_to do |format|
      if @authentication_local.save
        format.html { redirect_to @authentication_local, notice: 'Local was successfully created.' }
        format.json { render :show, status: :created, location: @authentication_local }
      else
        format.html { render :new }
        format.json { render json: @authentication_local.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @authentication_local.update(authentication_local_params)
        format.html { redirect_to @authentication_local, notice: 'Local was successfully updated.' }
        format.json { render :show, status: :ok, location: @authentication_local }
      else
        format.html { render :edit }
        format.json { render json: @authentication_local.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @authentication_local.destroy
    respond_to do |format|
      format.html { redirect_to authentication_locals_url, notice: 'Local was successfully destroyed.' }
      format.json { head :no_content }
    end
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
