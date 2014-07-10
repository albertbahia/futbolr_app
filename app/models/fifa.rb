class FIFA

  def self.make_player(player_hash)
    Player.create(
      {
        name: player_hash["first_name"] + ' ' + player_hash["last_name"],
        photo_url: 'http://www.placekitten.com/300/300',
        position: player_hash["type"],
        country: player_hash["country"] || 'Unknown',
        goals_scored: 0,
        team_id: nil,
        rating: player_hash["rating"]
      })


  end



end



# t.string   "name"
# t.text     "photo_url"
# t.string   "position"
# t.integer  "goals_scored"
# t.string   "country"
# t.integer  "team_id"
# t.datetime "created_at"
# t.datetime "updated_at"
# t.integer  "rating"
# end
