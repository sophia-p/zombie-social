class WelcomeController < ApplicationController
	def index
		@zombies = Zombie.all
	end
end
