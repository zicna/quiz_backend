class QuizSerializer < ActiveModel::Serializer
  attributes :id, :name, :category_id
  belongs_to :category
  has_many :questions
end
