
class Authentication::LocalsController < ApplicationController
  before_action :set_authentication_local, only: [:show, :edit, :update, :destroy]

  # GET /authentication/locals
  # GET /authentication/locals.json
  def index
    @authentication_locals = Authentication::Local.all
  end

  # GET /authentication/locals/1
  # GET /authentication/locals/1.json
  def show
  end

  # GET /authentication/locals/new
  def new
    @authentication_local = Authentication::Local.new
  end

  # GET /authentication/locals/1/edit
  def edit
  end

  # POST /authentication/locals
  # POST /authentication/locals.json
  def create
    @authentication_local_params = {:email => authentication_local_params[:email], :password_digest => authentication_local_params[:password_digest]}
    
    @user = User.create(:email => authentication_local_params[:email])

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

  # PATCH/PUT /authentication/locals/1
  # PATCH/PUT /authentication/locals/1.json
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

  # DELETE /authentication/locals/1
  # DELETE /authentication/locals/1.json
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
