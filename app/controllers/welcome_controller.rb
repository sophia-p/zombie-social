class WelcomeController < ApplicationController
	def index
		@zombies = Zombie.all
		@posts = Post.all
		@activities = PublicActivity::Activity.all
	end
end
