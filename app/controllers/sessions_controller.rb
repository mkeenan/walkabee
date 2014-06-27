class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.where(:email => params[:session][:email]).first

    if @user == nil || !@user.authenticate(params[:session][:password])
      render 'new'
    else
      session[:remember_token] = @user.id
      @current_user = @user
      redirect_to categories_path
    end

  end

  def destroy
    session.delete(:remember_token)
    redirect_to root_path
  end

end