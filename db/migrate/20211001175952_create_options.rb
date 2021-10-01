class CreateOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :options do |t|
      t.belongs_to :question, null: false, foreign_key: true
      t.boolean :is_correct
      t.string :content
      t.string :explanation

      t.timestamps
    end
  end
end
