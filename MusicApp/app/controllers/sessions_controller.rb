class SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(params[:user][:email], params[:user][:password])

    if @user
      log_in_user!(@user)

      #might change based on routes
      redirect_to bands_url
    else
      flash[:errors] = ["Wrong username or password"]
      #might change based on particular project
      redirect_to new_session_url
    end
  end

  def new
    @user = User.new
    render :new
  end

  def destroy
    current_user.reset_session_token!
    session[:session_token] = nil
    #might change based on particular project
    redirect_to new_session_url
  end
end
