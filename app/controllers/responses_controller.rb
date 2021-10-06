class ResponsesController < ApplicationController
    def create
        
        response_params.each do |r|
            resp = Response.create(r)
        end
        #!option one
        take_id =params[:_json].first[:take_id]
        take = Take.find_by(id: take_id)
        user = User.find_by(id: take.user.id)
        render json: user

        # !option two
        
        # responses = []
        # response_params.each do |r|
        # byebug
            
        #     resp = Response.create(r)
        #     responses << resp
        # end
        # render json: responses
    end

    private
    def response_params
        params.require(:_json).map do |obj|
            obj.permit(:option_id, :question_id, :take_id)
        end

    end
    
end
