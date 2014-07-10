require 'rails_helper'

describe Player do
  let(:ozil) {
    Player.new(
      {
        name: 'mesut',
        photo_url: 'http://www.placekitten.com/300/300',
        position: 'midfielder',
        goals_scored: 5,
        country: 'germany',
        team_id: 2,
        rating: '96'
      }
    )
  }

  it 'is valid with a name, photo_url, position, goals_scored, country, team_id, rating' do
    expect(ozil).to be_valid
  end

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:photo_url) }
  it { should validate_presence_of(:position) }
  it { should validate_presence_of(:goals_scored) }
  it { should validate_presence_of(:country) }
  it { should validate_presence_of(:team_id) }
  it { should validate_presence_of(:rating) }
end
