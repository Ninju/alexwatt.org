class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  before_save :assign_authentication_token

  def assign_authentication_token
    if authentication_token.blank?
      self.authentication_token = generate_authentication_token
    end
  end

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

  private
    
    def generate_authentication_token
      loop do
        token = Devise.friendly_token
        break token unless User.where(authentication_token: token).first
      end
    end
end
