class GoalsController < ApplicationController
    before_action :authorized , only: [:create,:delete]

    def index
        @goals = Goal.all 
        render json: @goals
    end
    
    def show
        @goal = Goal.find(params[:id])
        render json: @goal
    end

    def create
        @goal = Goal.create(name:params[:name], complete: params[:complete],user_id: @user.id)
        render json: @goal
    end
end
