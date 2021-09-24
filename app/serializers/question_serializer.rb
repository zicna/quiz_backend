class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :content, :quiz_id
  belongs_to :quiz
  has_many :options
end
