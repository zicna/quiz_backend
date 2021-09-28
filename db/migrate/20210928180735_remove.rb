class Remove < ActiveRecord::Migration[6.1]
  def change
    remove_column :quizzes, :category_id
  end
end
