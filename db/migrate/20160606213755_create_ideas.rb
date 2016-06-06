class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :tag
      t.string :summary
      t.text :description

      t.timestamps null: false
    end
  end
end
