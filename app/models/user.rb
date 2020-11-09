class User < ApplicationRecord
  has_one :profile
  ##from stack overflow
  #after_create :create_profile

  #def build_profile
  #  Profile.create(user: self) # Associations must be defined correctly for this syntax, avoids using ID's directly.
  #end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
