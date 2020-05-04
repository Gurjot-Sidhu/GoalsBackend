class MilestonesController < ApplicationController
    before_action :authorized , only: [:create,:delete]

    def index
        @milestones = Milestone.all 
        render json: @milestones
    end

    def create
        @milestone = Milestone.create(name:params[:name],complete:params[:complete],goal_id:params[:goal_id])
        render json: @milestone
    end

    def show
        @milestone = Milestone.find(params[:id])
        render json: @milestone
    end

    def delete
        @milestone = Milestone.find(params[:id])
        @milestone.destroy
        render json: {message: "pass"}
    end

    def complete
        @milestone = Milestone.find(params[:id])
        @milestone.update(complete:!@milestone.complete)
        render json: @milestone
    end
end
