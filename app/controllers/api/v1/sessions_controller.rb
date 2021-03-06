class Api::V1::SessionsController < ApplicationController

    def create
        user = User.find_by(username: params[:user][:username])
                    .try(:authenticate, params[:user][:password])
        if user
            session[:user_id] = user.id
            render json: {
                status: :created,
                logged_in: true,
                user: user
            }
        else
            render json: { status: 401, message: "Username/password combo does not exist" }
        end  
    end

    def destroy
        session.delete :user_id
        render json: { status: 200, logged_out: true}
    end
end
