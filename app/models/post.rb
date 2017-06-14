class Post < ApplicationRecord
	belongs_to :zombie
	validates :content, :zombie, presence: true
end
