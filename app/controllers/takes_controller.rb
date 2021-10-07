class TakesController < ApplicationController
    
    def create
        take = Take.new(take_params)

        if take.save
            render json: take
        else
            render json: {notice: {error: "New Take has not been created."}}
        end
    end

    private
    def take_params
        params.require(:take).permit(:user_id, :quiz_id)
    end
end
