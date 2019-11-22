class BracketsController < ApplicationController
    def index
        brackets = Bracket.all
        render json: brackets
    end

    def create 
        # debugger
        bracket = Bracket.create(bracket_params)
        # debugger

        render json: bracket

        #  = params.permit(:bracket, :user_id)

    end

    def show
        bracket = Bracket.find(params[:id])
        render json: bracket
    end

    
    private

    def bracket_params
        # debugger
        params.require(:bracket).permit(:bracket, :user_id)
    end
end
