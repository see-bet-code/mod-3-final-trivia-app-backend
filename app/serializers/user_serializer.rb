class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :points, :premium?
  has_many :games
end
