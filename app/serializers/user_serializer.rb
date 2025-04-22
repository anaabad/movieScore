class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :role
end
