class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      log_in_user!(@user)
      redirect_to bands_url
      # might need to change this later based on route
    else
      flash[:errors] = @user.errors.full_messages
      render :new
      # this may be a problem  later if @user shows up as nil
    end
  end

  def new
    @user = User.new
    render :new
  end

  def show
    #nil when i look up by session token
    @user = User.find(params[:id])
    render :show
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
