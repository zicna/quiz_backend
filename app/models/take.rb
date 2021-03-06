class Take < ApplicationRecord
  belongs_to :user
  belongs_to :quiz
  has_many :responses, dependent: :destroy

  
  def total_questions
    self.quiz.questions.length
  end
  
  def num_correct_answers
    corr_ans = 0
    self.responses.map do |response|
      if response.option.is_correct
        corr_ans +=1
      end
    end
    corr_ans
  end

end
