class Round < ApplicationRecord
  has_one :question
  belongs_to :game
end
