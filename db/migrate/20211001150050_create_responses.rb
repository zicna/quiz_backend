class CreateResponses < ActiveRecord::Migration[6.1]
  def change
    create_table :responses do |t|
      t.belongs_to :take, null: false, foreign_key: true
      t.belongs_to :options, null: false, foreign_key: true
      t.belongs_to :question, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
