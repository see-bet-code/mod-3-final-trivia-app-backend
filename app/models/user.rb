class User < ApplicationRecord
    # has_and_belongs_to_many :games
    has_many :games, dependent: :destroy
end
