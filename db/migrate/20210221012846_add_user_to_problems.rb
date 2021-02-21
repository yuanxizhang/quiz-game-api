class AddUserToProblems < ActiveRecord::Migration[6.0]
  def change
    add_reference :problems, :user, foreign_key: true
  end
end
