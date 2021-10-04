class UsersController < ApplicationController
    def index
        users = User.all

        render json: users.as_json(options)
    end

    def show
        user = User.find_by(email: params[:id])
        if user
            render json: user.as_json(options)
        end
    end

    def create
        user = User.find_or_create_by(email: user_params[:userEmail]) do |user|
            user.email = user_params[:userEmail]
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
        {include: {
            takes: {
                include:{
                    responses:{
                    # include: {option:{
                    #     only: [:question_id, :content, :explanation, :is_correct]
                    # }},
                        except: [:created_at, :updated_at],
                        methods: [:is_true, :url_explanation]
                        # only: :is_true
                        # include: [:is_true]
                    }
                },
                except: [:created_at, :updated_at]
            }}, 
        except: [:created_at, :updated_at]
        }
    end
end
