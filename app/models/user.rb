class User < ApplicationRecord
  has_many :posts
  has_many :memberships
  has_many :groups, :through => :memberships
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
