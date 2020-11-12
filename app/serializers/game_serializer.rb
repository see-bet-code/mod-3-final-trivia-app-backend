class GameSerializer < ActiveModel::Serializer
  attributes :id, :category, :difficulty, :points
  belongs_to :user
end
