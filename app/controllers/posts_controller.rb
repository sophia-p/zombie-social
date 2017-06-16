class PostsController < ApplicationController
	before_action :find_post, only: [:show, :update, :destroy]
	def index
		@posts = Post.all.order("created_at DESC")
	end

	def show
	end

	def new
		@post = Post.new
	end

	def create
		@zombie = current_user
		@post = Post.new(post_params)
		@post.zombie_id = current_user.id
		if @post.save
			redirect_to @zombie
		else
			@errors = @post.errors
			render 'new'
		end
	end

	def update
		if @post.update(post_params)
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		@post.destroy
		redirect_to root_path
	end

	private

	def post_params
		params.require(:post).permit(:content, :zombie_id =>current_user.id)
	end

	def find_post
		@post = Post.find_by(id: params[:id])
	end
end
