class Api::V1::GamesController < ApplicationController
    def show
        game = Game.find(params[:id])
        render json: game
    end

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

    private

    def game_params
        params.require(:game).permit(
            :category,
            :difficulty,
            :user
        )
    end
end
