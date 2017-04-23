class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
