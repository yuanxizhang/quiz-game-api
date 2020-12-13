class AddLanguageToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_column :solutions, :language, :string
  end
end
