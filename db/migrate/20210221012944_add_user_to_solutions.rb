class AddUserToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_reference :solutions, :user, foreign_key: true
  end
end
