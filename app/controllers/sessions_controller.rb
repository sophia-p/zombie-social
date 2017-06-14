class SessionsController < ApplicationController
	def new
	end

	def create
		@zombie = Zombie.find_by(username: params[:session][:username])

		if @zombie && @zombie.authenticate(params[:session][:password])
			session[:zombie_id] = @zombie.id
			redirect_to zombie_path(@zombie), notice: "You have successfully logged in!"
		else
			flash.now[:error] = "Invalid username or password"
			render 'new'
		end
	end

	def destroy
		session[:zombie_id] = @current_user = nil
		redirect_to root_url
	end
end
