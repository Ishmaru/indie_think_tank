class AddUserRefToIdeas < ActiveRecord::Migration
  def change
    add_reference :ideas, :user, index: true, foreign_key: true
  end
end
