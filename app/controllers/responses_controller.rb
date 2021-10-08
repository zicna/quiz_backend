class ResponsesController < ApplicationController
    # *out params are comming as array thet is way we have block code in create action and in response_params 
    def create
        response_params.each do |r|
            resp = Response.create(r)
        end
        
        # !option two redirect to user show action
        # *all responses that we are sending through params belongs_to same take, therefore they have the same user
        take_id =params[:_json].first[:take_id]
        take = Take.find_by(id: take_id)
        user = User.find_by(id: take.user.id)
        redirect_to "http://localhost:3000/users/#{user.id}"
        
    end

    private

    def response_params
        params.require(:_json).map do |obj|
            obj.permit(:option_id, :question_id, :take_id)
        end
    end
    
end
