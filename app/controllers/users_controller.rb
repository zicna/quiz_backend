class UsersController < ApplicationController
    def index
        # !this one is not in use yet
        users = User.all

        render json: users.as_json(options)
    end

    def show
        # *we are comming here through responses controller
        user = User.find_by(id: params[:id])
        if user
            render json: user.as_json(options)
        end
    end

    def create
        # *this is main action for our user to create or retrive new profil
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
# *we are not including options in our responses, rather we are using custom model methods that will check if given option for response it 'true' or 'false'
#*this custom methods will make it easier for us in front end
    def options
        {include: {
            takes: {
                # include:{
                #     responses:{
                #         except: [:created_at, :updated_at],
                #         methods: [:is_true, :url_explanation]
                #     }
                # },
                except: [:created_at, :updated_at],
                methods: [:total_questions, :num_correct_answers]
            }}, 
        except: [:created_at, :updated_at]
        }
    end
end
