class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.text :photo_url
      t.string :position
      t.integer :goals_scored
      t.string :country
      t.belongs_to :team
      t.timestamps
    end
  end
end
