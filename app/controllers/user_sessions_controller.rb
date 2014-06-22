class UserSessionsController < ApplicationController
  respond_to :json

  def create
    if @user = User.find_by_authentication_params(params[:user])
      render json: { success: true, user_admin: @user.admin, user_token: @user.authentication_token, user_email: @user.email }
    else
      render json: { success: false }
    end
  end
end
