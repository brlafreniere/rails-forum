class TopicsController < ApplicationController
    authorize_resource

    def index
        @topics = Topic.accessible_by(current_ability)
    end

    def show
        @topic = Topic.find(params[:id])
    end

    def new

    end
end
