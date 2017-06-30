class Post < ApplicationRecord
	include PublicActivity::Model
	tracked
	belongs_to :zombie
	validates :content, :zombie_id, presence: true
end
