class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation
  # attr_accessible :title, :body

  class << self
    def find_by_authentication_params(params)
      user = find_for_database_authentication(email: params[:email])

      if user && user.valid_password?(params[:password])
        user
      else
        nil
      end
    end
  end
end
