class OptionSerializer < ActiveModel::Serializer
  attributes :id, :content, :is_correct, :question_id

  belongs_to :question
end
