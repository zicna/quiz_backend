class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :questions, :options
  has_many :quizzes
  
  def quizzes
    object.quizzes.map do |quiz|
      {
        id: quiz.id,
        name: quiz.name,
        category_id: quiz.category_id
      }
    end
  end
  
  def questions
    questions = []
    object.quizzes.each do |quiz|
      quiz.questions.map do |question|
        questions << 
        {
          id: question.id,
          content: question.content,
          quiz_id: question.quiz_id
        }

      end
    end
    questions
  end

  def options
    options =[]
    object.quizzes.each do |quiz|
      quiz.questions.each do |question|
        question.options.map do |option|
          options << 
          {
            id: option.id,
            content: option.content,
            question_id: option.question_id,
            is_correct: option.is_correct
          }
        end
      end
    end
    options
  end
end
