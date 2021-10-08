class TakesController < ApplicationController
    
    def create
        take = Take.new(take_params)

        if take.save
            render json: take
        else
            render json: {notice: {error: "New Take has not been created."}}
        end
    end

    def destroy
        take = Take.find_by(id: params[:id])
        user = User.find_by(id: take.user.id)
        take.destroy
        render json: {message:{notice: "#{user.username}'s take has beed deleted."}}
    end

    private
    def take_params
        params.require(:take).permit(:user_id, :quiz_id)
    end
end
