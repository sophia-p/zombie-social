class Zombie < ApplicationRecord
	has_secure_password
	validates :email, :username, presence: true
	validates :email, :username, :password, length:{minimum:6}
	validates_confirmation_of :password
end	
