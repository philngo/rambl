class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:edit, :update, :show, :destroy]
  before_filter :correct_user,   only: [:edit, :update, :destroy]
    
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    @user.state = State.all.first
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to amblr!"
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def update
    @user = User.find(params[:id])
    
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end
 
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    format.html { redirect_to users_url }
  end
  
  def update_state
    user = User.find(params[:id])
    user.update_attribute(:state_id, params[:state_id])
    sign_in user
    redirect_to root_path
  end  
  
  private

    def correct_user
      @user = User.find(params[:id])
      redirect_to root_path unless current_user?(@user)
    end
end
