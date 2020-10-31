class AddExplainToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :explain, :text
  end
end
