class OptionsController < ApplicationController
    def index
        options = Option.all
        render json: options
    end
end
