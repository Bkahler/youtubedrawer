class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauth_providers => [:google_oauth2]

  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :provider, :uid, :avatar

  # METHODS ---------------------------------------------
  def self.from_omniauth(auth)
    if current_user = User.find_by_email(auth.info.email)
      current_user.provider = auth.provider
      current_user.uid = auth.uid
      current_user
    else
      where(auth.slice(:provider, :uid)).first_or_create do |current_user|
        current_user.provider = auth.provider
        current_user.uid = auth.uid
        current_user.username = auth.info.name
        current_user.email = auth.info.email
        current_user.avatar = auth.info.image
      end
    end
  end
end