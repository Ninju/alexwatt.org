class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_gon_admin!

  def set_gon_admin!
    gon.current_user_is_admin = admin_is_logged_in?
  end

  private

    def current_user
      @current_user ||= session[:user_id] && User.find_by_id(session[:user_id])
    end

    def user_is_logged_in?
      current_user.present?
    end

    def admin_is_logged_in?
      user_is_logged_in? and current_user.admin?
    end

    def authenticate_user!
      unless user_is_logged_in?
        render json: { status: 401 }, status: :unauthorized
      end
    end

    def authenticate_admin_user!
      unless admin_is_logged_in?
        render json: { status: 401 }, status: :unauthorized
      end
    end
end
