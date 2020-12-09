class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    check_authorization :unless => :devise_controller?

    def home
        @recent_posts = Post.all
    end
end
