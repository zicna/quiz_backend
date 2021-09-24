class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :questions, :options
  has_many :quizzes
  
  def questions
    object.quizzes.map do |quiz|
      quiz.questions
    end
  end

  def options
    object.quizzes.map do |quiz|
      quiz.questions.map do |question|
        question.options
      end
    end
  end
end
