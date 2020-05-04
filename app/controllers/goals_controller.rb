class GoalsController < ApplicationController
    before_action :authorized , only: [:show,:create,:update]

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


    def delete
        @goal = Goal.find(params[:id])
        @goal.destroy
        render json: {message:"goal has been deestoryed"}
    end

    def complete
        @goal = Goal.find(params[:id])
        @goal.completed
        render json: @goal
    end

end
