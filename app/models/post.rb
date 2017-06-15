class Post < ApplicationRecord
	belongs_to :zombie
	validates :content, :zombie_id, presence: true
end
