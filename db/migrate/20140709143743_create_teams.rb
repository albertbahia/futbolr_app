class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.text :flag_url
      t.integer :goals_scored
      t.string :formation
      t.belongs_to :user
      t.timestamps
    end
  end
end
