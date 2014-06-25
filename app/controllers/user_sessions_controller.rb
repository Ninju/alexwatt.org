class UserSessionsController < ApplicationController
  respond_to :json

  def create
    if @user = User.find_by_authentication_params(params[:user])
      render json: @user, serializer: AuthenticationSerializer 
    else
      render json: { success: false }
    end
  end
end
