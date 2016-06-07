class AddIdeaRefToGames < ActiveRecord::Migration
  def change
    add_reference :games, :idea, index: true, foreign_key: true
  end
end
