class AuthenticationSerializer < ActiveModel::Serializer
  attributes :success, :user_admin

  self.root = false

  def success
    true
  end

  def user_admin
    object.admin?
  end
end
