class CategoriesController < ApplicationController
    @@options = {
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

    def index
        categories = Category.all
        
        render json: categories.as_json(@@options)
    end

    def show
        category = Category.find_by(id: params[:id])

        if category
            render json: category.as_json(@@options)
        else 
            render json: {message:{error: "Category not found"}}
        end 
    end
end
