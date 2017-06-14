class ZombiesController < ApplicationController
	def show
		@zombie = Zombie.find_by(id: params[:id])
	end

	def new
		@zombie = Zombie.new
	end

	def create
		# render plain: user_params.inspect
		@zombie = Zombie.new(zombie_params)
		if @zombie.save
			session[:zombie_id] = @zombie.id
			redirect_to @zombie
		else
			@errors = @user.errors.full_messages
			render 'new'
		end

	end

	private
	def zombie_params
		params.require(:zombie).permit(:username, :email, :password, :password_confirmation, :image, :fav_hot_sauce)
	end
end
