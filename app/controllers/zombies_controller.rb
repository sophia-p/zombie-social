class ZombiesController < ApplicationController
	def show
		@zombie = Zombie.find_by(id: params[:id])
	end

	def new
		@zombie = Zombie.new
	end

	def create
		# render plain: user_params.inspect
		@zombie = Zombie.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to root_path
		else
			@errors = @user.errors.full_messages
			render 'new'
		end

	end

	private
	def user_params
		params.require(:zombie).permit(:username, :email, :password, :password_confirmation, :image)
	end
end
