class PostsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_post, only: [:update, :edit, :destroy, :show]
	authorize_resource
	
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
		post = Post.create(post_params)
		flash[:primary] = "article creer"
		redirect_to post_path(post.id)
	end

	def update
		if @post.update(post_params)
			flash[:success] = "Vous avez bien modifié l'article"
			redirect_to posts_path
		else
			render 'edit'
		end
	end

	def destroy
		@post.destroy
		flash[:danger] = "Vous avez bien supprimer l'article"
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
