class FIFA

  def self.api_call(club_id)
    # ---Currently only draws from 1 club.  Need to add functionality to get all clubs in one API call.
    url = "http://tools.fifaguide.com/api/club/#{club_id}"
    api_response = HTTParty.get(url)
    players_array = JSON.parse(api_response)
    return players_array
    # players_array.each do |player_hash|
    #   make_player(player_hash)
    # end
  end

  def self.make_player(player_hash)
    Player.create(
      {
        name: player_hash["first_name"] || 'Unknown',
        photo_url: 'http://www.placekitten.com/300/300',
        position: player_hash["type"],
        goals_scored: 5,
        country: player_hash["country"] || 'Unknown',
        team_id: 2,
        rating: player_hash["rating"]
      })
  end

end
