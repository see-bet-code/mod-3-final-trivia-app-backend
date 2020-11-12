class Api::V1::GamesController < ApplicationController
    def show
        game = Game.find(params[:id])
        render json: game
    end

    def show
        games = Game.all
        render json: games
    end

    def create
        game = Game.new(game_params)
        unless game.save
            render json: { status: 500 }
        else
            render json: {
                status: :added,
                game: game
            }
        end
    end

    private

    def game_params
        params.permit(
            :category,
            :difficulty,
            :points,
            :user_id
        )
    end
end
