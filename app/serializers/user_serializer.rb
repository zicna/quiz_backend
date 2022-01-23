class UserSerializer < ActiveModel::Serializer
  attributes :email, :username, :admin
end
