class User < ApplicationRecord
  include Authority::UserAbilities
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # attr_accessor :username

  

  has_many :listings
end
