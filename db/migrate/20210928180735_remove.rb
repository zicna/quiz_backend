class Remove < ActiveRecord::Migration[6.1]
  def change
    remove_column :quizzzes, :category_id
  end
end
