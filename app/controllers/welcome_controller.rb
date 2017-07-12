class WelcomeController < ApplicationController
	def index
		@zombies = Zombie.all
		@posts = Post.all
		@activities = PublicActivity::Activity.order(created_at: :desc)
	end
end
