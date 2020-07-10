class PostsController < ApplicationController
        before_action :find_post,  only: [:edit, :update, :destroy]
    def index
        @posts = Post.all
    end
    
    
    def new
        @post = Post.new
    end
    
    def create
        # byebug
        @post = Post.new(post_params)
        if @post.save
            redirect_to posts_path
        else
            redirect_to posts_path
        end
    end

    def edit
    end

    def update
        if @post.update(post_params)
            redirect_to posts_path
        else
            render :edit
        end
    end

    def destroy
        @post.destroy
        redirect_to posts_path
    end

    private

    def post_params
        params.require(:post).permit(:post_title, :comment, :user_id, :movie_id, :rating)
    end

    def find_post
        @post = Post.find(params[:id])
    end
end