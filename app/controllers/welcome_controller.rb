class WelcomeController < ApplicationController
	def index
		if current_user
		@zombies = Zombie.all
		@posts = Post.all
		@activities = PublicActivity::Activity.order(created_at: :desc)
		
		else
			flash[:notice] = "You must be logged in to see that."
			redirect_to :controller => 'sessions', :action => 'new', :alert=>"You must be logged in to see that."
 
		end
	end
end
