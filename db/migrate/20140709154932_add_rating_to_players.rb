class AddRatingToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :rating, :integer
  end
end
