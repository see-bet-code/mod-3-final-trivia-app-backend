class Api::V1::UsersController < ApplicationController

    before_action :require_login, except: [:create]

    def create
        user = User.new(user_params)
        unless user.save
            render json: { status: 500 }
        else
            session[:user_id] = user.id
            render json: {
                status: :created,
                user: user
            }
        end
    end

    def update
        if @user.update(user_params)
            render json: {
                status: :updated,
                user: user
            }
        else
            render json: { status: 500 }
        end 
    end

    def destroy
        User.destroy(@user.id)
        # not sure what to render
    end

    private

    def user_params
        params.require(:user).permit(
            :username,
            :password,
            :password_confirmation
        )
    end

end
