class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create 
        # byebug
        user = User.create(user_params)
        token = JWT.encode({user_id: user.id}, "secret")
        render json: {user: user.name, token: token} 
    end

    private

    def user_params
        params.require(:user).permit(:name, :password)
    end
end
