class Admin::TopicsController < ApplicationController
    layout "admin"

    def index
        @topics = Topic.all
    end
end