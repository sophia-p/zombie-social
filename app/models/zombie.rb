class Zombie < ApplicationRecord
	has_secure_password
	validates :email, :username, presence: true
	validates :email, :username, :password, length:{minimum:6}
	validates_confirmation_of :password
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end	
