class Take < ApplicationRecord
  belongs_to :user
  belongs_to :quiz
  has_many :responses

  # *not sure we are using this one
  def total_questions
    self.quiz.questions.size
  end
end
