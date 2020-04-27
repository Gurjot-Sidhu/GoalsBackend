class MilestonesController < ApplicationController


    def show
        @milestone = Milestone.find(params[:id])
        render json: @milestone
    end

end
