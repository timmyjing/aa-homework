class SessionsController < ApplicationController

  def new
    if current_user
      redirect_to bands_url
    else
      render :new
    end
  end

  def create
    user = User.find_by_credentials(user_params[:email], user_params[:password])
    if user
      login!(user)
      redirect_to bands_url
    else
      redirect_to new_sessions_url
    end
  end

  def destroy
    logout!
    redirect_to new_sessions_url
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
