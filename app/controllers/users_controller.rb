class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:remember_token] = @user.id
      @current_user = @user
      redirect_to categories_path
    else
      render root_path
    end
  end


protected

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end