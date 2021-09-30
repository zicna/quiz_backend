class UsersController < ApplicationController
    def index
        users = User.all

        render json: users.to_json(except: [:created_at, :updated_at])
    end

    def show
        user = User.find_by(email: params[:id])
        if user
            byebug
        render json: user.to_json(except: [:created_at, :updated_at])
        end
    end

    def create

        user = User.find_or_create_by(email: user_params[:email]) do |user|
            user.email = user_params[:email]
            user.username = user_params[:username]
        end

        if user
            render json: user.as_json(options)
        else
            render json: {notice: {error: "User not found or created"}}
        end


    end

    private 
    def user_params
        params.require(:user).permit(:username, :userEmail)
    end

    def options
        {
    include: {responses: {
        only: [:id, :user_id, :options_id, :question_id, :content]
    }} 
        }
    end
end
