class AddColumnToQuizzesTable < ActiveRecord::Migration[6.1]
  def change
    add_column :quizzes, :description, :text
  end
end
