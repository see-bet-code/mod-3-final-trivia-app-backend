class Api::V1::SessionsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(username: params[:user][:username])
        @user = @user.try(:authenticate, params[:user][:password])
        if @user
            session[:user_id] = @user.id
            render json: @user
        else
            render json: {
                error: "Username/Password combination doesn't exist in database"
            }
        end  
    end

    def destroy
        session.delete :user_id
    end
end
