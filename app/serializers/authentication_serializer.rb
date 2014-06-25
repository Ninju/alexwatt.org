class AuthenticationSerializer < ActiveModel::Serializer
  attributes :user_admin, :user_token, :user_email, :success

  self.root = false

  def success
    true
  end

  def user_admin
    object.admin
  end

  def user_token
    object.authentication_token
  end

  def user_email
    object.email
  end
end
