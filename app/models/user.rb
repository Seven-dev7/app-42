class User < ApplicationRecord
  has_many :posts
  has_many :memberships
  has_many :groups, :through => :memberships
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :omniauthable, omniauth_providers: %i[facebook twitter]

  def self.from_twitter(auth)
  	where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  		user.email = auth.info.email
  		user.password = Devise.friendly_token[0,20]
  	end
  end

  def self.from_facebook(auth)
  	where(facebook_id: auth.uid).first_or_create do |user|
  		user.email = auth.info.email
  		user.password = Devise.friendly_token[0,20]
  	end
  end
  
  def email_required?
     false
  end
end
