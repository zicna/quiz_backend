class ResponseSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :take
  has_one :option
  has_one :question
end
