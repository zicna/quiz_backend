class QuizzesController < ApplicationController
    before_action :options, only: :show

    def show
        quiz = Quiz.find_by(id: params[:id])
        if quiz
            render json: quiz.as_json(options)
        else
            render json: {notice: {error: "Quiz not found"}}
        end
    end

    private 

    def options
        { include: {questions: {
                        include:{
                            options:{only: [:id, :question_id, :is_correct, :content]}
                        }, only: [:id, :content, :quiz_id] 
        }},
        only: [:id, :name, :description]
        }
    end
end
