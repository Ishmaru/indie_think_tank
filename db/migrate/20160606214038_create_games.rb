class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :summary
      t.text :description
      t.string :url
      t.string :media

      t.timestamps null: false
    end
  end
end
