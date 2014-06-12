class UserSessionsController < Devise::SessionsController
  respond_to :json

  def create
    warden.custom_failure!
    @user = warden.authenticate!(scope: resource_name, recall: "user_sessions#login_failure")
    sign_in(resource_name, @user, store: false)
    render json: { success: true, user_token: @user.authentication_token, user_email: @user.email } and return
  end

  def login_failure
    render json: { success: false } and return
  end

  private
    def resource_name
      :user
    end
end
