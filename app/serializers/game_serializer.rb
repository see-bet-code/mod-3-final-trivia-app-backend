class GameSerializer < ActiveModel::Serializer
  attributes :id, :category, :difficulty, :leader?
  belongs_to :user
end
