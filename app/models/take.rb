class Take < ApplicationRecord
  belongs_to :user
  belongs_to :quiz
  has_many :responses

  def total_questions
    self.quiz.questions.size
  end
end
