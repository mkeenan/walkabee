class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.where(:email => params[:session][:email]).first

    if @user == nil || !@user.authenticate(params[:session][:password])
      # flash[:error] = "Not working...try again."
      render 'new'
    else
      session[:remember_token] = @user.id
      @current_user = @user
      # flash[:success] = "Welcome!"
      redirect_to root_path
    end

  end

  def destroy
    session.delete(:remember_token)
    redirect_to root_path
  end

end