class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :name, :username, :password_digest, :avatar_url, :premium?
  has_many :games

end
