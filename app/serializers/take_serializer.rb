class TakeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :quiz
end
