class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :text
      t.references :test, foreign_key: true
      t.references :category, foreign_key: true
      t.references :difficulty, foreign_key: true

      t.timestamps
    end
  end
end
