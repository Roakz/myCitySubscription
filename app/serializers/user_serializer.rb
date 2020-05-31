class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :volunteer
end
