class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :question
      t.string :answer
      t.references :test, foreign_key: true
  
      t.timestamps
    end
  end
end
