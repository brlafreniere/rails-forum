class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    def home
        @recent_posts = Post.all
    end
end
