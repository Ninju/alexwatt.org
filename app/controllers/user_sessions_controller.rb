class UserSessionsController < ApplicationController
  respond_to :json

  def create
    if @user = User.find_by_authentication_params(params[:user])
      sign_in @user 
      render json: @user, serializer: AuthenticationSerializer 
    else
      render json: { success: false }
    end
  end

  private

    def sign_in(user)
      session[:user_id] = user.id
      user.update_sign_in_count!
      set_gon_admin!
    end
end
