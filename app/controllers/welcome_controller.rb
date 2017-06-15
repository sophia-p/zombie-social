class WelcomeController < ApplicationController
	def index
		@zombies = Zombie.all
		@posts = Post.all
	end
end
