class ResponsesController < ApplicationController
    def create
        response_params.each do |r|
            resp = Response.create(r)
        end
        #!option one
        # *this way we only get user and not users takes and responses
        # take_id =params[:_json].first[:take_id]
        # take = Take.find_by(id: take_id)
        # user = User.find_by(id: take.user.id)
        # render json: user

        # !option two redirect to user show action
        # *all responses that we are sending through params belongs_to same take, therefor they have same user
        take_id =params[:_json].first[:take_id]
        take = Take.find_by(id: take_id)
        user_id = take.user.id
        redirect_to "http://localhost:3000/users/#{user_id}"
        
    end

    private

    def response_params
        params.require(:_json).map do |obj|
            obj.permit(:option_id, :question_id, :take_id)
        end
    end
    
end
