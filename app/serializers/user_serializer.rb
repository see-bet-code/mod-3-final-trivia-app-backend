class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password_digest, :premium?
  has_many :games
end
