class CategoriesController < ApplicationController
    def index
        categories = Category.all
        options = {
            include: {
            quizzes:{
                include:{
                    questions:{only: [:id, :content, :quiz_id],
                        include:{
                            options:{only: [:id, :content, :is_correct,:question_id]}
                        }
                    }
                }, only: [:id, :name, :category_id]
            }
        }, only: [:id, :name]
        }
        render json: categories.as_json(options)

    end

    def show
        category = Category.find_by(id: params[:id])
        options = {
            include: {
            quizzes:{
                include:{
                    questions:{only: [:id, :content, :quiz_id],
                        include:{
                            options:{only: [:id, :content, :is_correct,:question_id]}
                        }
                    }
                }, only: [:id, :name, :category_id]
            }
        }, only: [:id, :name]
        }

        if category
            render json: category.as_json(options)
        else 
            render json: {message:{error: "Category not found"}}
        end 
    end
end
