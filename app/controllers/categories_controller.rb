class CategoriesController < ApplicationController
    def index
        categories = Category.all

        render json: categories
    end

    def show
        category = Category.find_by(id: params[:id])

        if category
            render json: category
        else 
            render json: {message:{error: "Category not found"}}
        end 
    end
end
