class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :quizzes
  # this needs to be changed
  # def quizzes
  #   quizzes = []
  #   object.quizzes.map do |quiz|
  #     quizzes <<
  #     {
  #       id: quiz.id,
  #       name: quiz.name,
  #       category_id: quiz.category_id,
  #       questions: [
  #       ]
  #     }
  #   end
  #   #get all Questions db
  #   all_questions = Question.all
  #   #get all Options from db
  #   all_options = Option.all
  #   # for each quiz push questions that belongs to that quiz

  #   quizzes.each do |quiz|
  #     all_questions.map do |question|
  #       if question.quiz_id == quiz[:id]
  #         quiz[:questions] << {
  #           id: question.id,
  #           quiz_id: question.quiz_id,
  #           content: question.content,
  #           options: []
  #         }
  #       end
  #     end
  #   end
  #   #for each question in each quiz add options that belongs to them
  #   quizzes.each do |quiz|
  #     quiz[:questions].each do |question|
  #       all_options.map do |option|
  #         if option[:question_id] == question[:id]
  #           question[:options] << {
  #             id: option[:id],
  #             is_correct: option[:is_correct],
  #             content: option[:content],
  #             question_id: option[:question_id]
  #           }
  #         end
  #       end
  #     end
  #   end
  #   quizzes
  # end
  
end
