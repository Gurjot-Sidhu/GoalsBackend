class GoalsController < ApplicationController
    before_action :authorized , only: [:index,:show,:create,:update]

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

    def update
        @goal = Goal.find(id:params[:id])
        @goal.update(name:params[:name])
        render json: @goal
    end

end
