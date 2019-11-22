class Api::AuthController < ApplicationController
    
    def get_user
        token = request.headers["Authorization"]
        # byebug
        user_id = JWT.decode(token, "secret")[0]["user_id"]
        # byebug
        user = User.find(user_id)
        render json: {user: user}
    end

    def login
        user = User.find_by(name: params[:user][:name])
        # byebug
        if user && user.authenticate(params[:user][:password])
            token = JWT.encode({user_id: user.id}, "secret")
            render json: {user: user.name, token: token} 
        else 
           render json: {errors: "Failed!"} 
        end
    end
end