class UsersController < ApplicationController
    def index
        users = User.all

        render json: users.to_json(except: [:created_at, :updated_at])
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user.to_json(except: [:created_at, :updated_at])
    end
end
