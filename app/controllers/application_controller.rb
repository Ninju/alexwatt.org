class ApplicationController < ActionController::Base
  protect_from_forgery

  private

    def current_user
      @current_user ||= session[:user_id] && User.find_by_id(session[:user_id])
    end

    def authenticate_user!
      unless current_user.present?
        render json: { status: 401 }, status: :unauthorized
      end
    end

    def authenticate_admin_user!
      unless current_user && current_user.admin?
        render json: { status: 401 }, status: :unauthorized
      end
    end
end
