class PostsController < ApplicationController
    authorize_resource

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.author = current_user
        if @post.save
            flash[:success] = "Post saved successfully."
            redirect_to "/"
        else
            flash[:error] = @post.errors.full_messages
            redirect_to request.referer
        end
    end

    private
        def post_params
            params.require(:post).permit(:title, :body)
        end
end
