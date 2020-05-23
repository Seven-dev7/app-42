class PostsController < ApplicationController

	before_action :set_post, only: [:update, :edit, :destroy, :show]
	
	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def show
	end

	def edit
		
	end

	def create
		@post = Post.create(post_params)
		redirect_to post_path(post.id)
	end

	def update
		@post.update(post_params)
		redirect_to posts_path
	end

	def destroy
		@post.destroy
		redirect_to posts_path
	end

	private

	def set_post
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :content, :user_id)
	end
end
