class OptionSerializer < ActiveModel::Serializer
  attributes :id, :is_correct, :content, :explanation
  has_one :question
end
