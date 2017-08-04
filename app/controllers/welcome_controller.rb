class WelcomeController < ApplicationController
	def index
		if current_user
		@zombies = Zombie.all
		@posts = Post.all
		@activities = PublicActivity::Activity.order(created_at: :desc)
		
		else
			redirect_to :controller => 'sessions', :action => 'new'
 
		end
	end
end
