class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/:id
  def show
    # byebug
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/:id/edit
  def edit
  end

  # POST /users
  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to welcome_path
  end

  # PATCH/PUT /users/:id
  def update
      if @user.update(user_params)
        redirect_to @user, notice: 'User was successfully updated.' 
      else
        render :edit 
      end

  end

  # DELETE /users/
  def destroy
    @user.destroy
      redirect_to users_url, notice: 'User was successfully destroyed.' 

    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :password, :user_img_url)
    end
