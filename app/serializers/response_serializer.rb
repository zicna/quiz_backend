class ResponseSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :take
  has_one :options
  has_one :question
end
