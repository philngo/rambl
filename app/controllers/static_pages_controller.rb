class StaticPagesController < ApplicationController
  def home
    @users = User.all
    @user = current_user
    @states = State.all 
  end
end
