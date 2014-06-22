class ApplicationController < ActionController::Base
  protect_from_forgery

  private

    def authenticate_admin_user!
      if @current_user && @current_user.admin?
        return true
      end

      render json: { status: 401 }, status: :unauthorized
    end

    def authenticate_user_from_token!
      user_email = params[:user_email].presence
      user       = user_email && User.find_by_email(user_email)

      if user && Devise.secure_compare(user.authentication_token, params[:user_token])
        @current_user = user
      else
        render json: { status: 401 }, status: :unauthorized
      end
    end
end
