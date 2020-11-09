class Game < ApplicationRecord
  # has_and_belongs_to_many :users
  belongs_to :user
  has_many :rounds, dependent: :destroy
  # has_many :questions, through: :rounds
end
