class FIFA

  def self.api_call(club_id)
    # ---Currently only draws from 1 club.  Need to add functionality to get all clubs in one API call.
    api_response = HTTParty.get("http://tools.fifaguide.com/api/club/#{club_id}")
    players_array = JSON.parse(api_response)
    return players_array
  end

  def self.get_player_hash(players_array)
    players_array.each do |player_hash|
      return player_hash
    end
  end

  def self.make_player(player_hash)
    Player.create(
      {
        name: player_hash["first_name"],
        photo_url: 'http://www.placekitten.com/300/300',
        position: player_hash["type"],
        country: player_hash["country"] || 'Unknown',
        goals_scored: 0,
        team_id: 2,
        rating: player_hash["rating"]
      })
  end



end

players_array = FIFA.api_call(1)
# player_hash = FIFA.get_player_hash(players_array)
# players = FIFA.make_player(player_hash)
binding.pry


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
