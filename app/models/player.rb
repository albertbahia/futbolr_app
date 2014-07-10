class Player < ActiveRecord::Base
  belongs_to :team

  # validate the presence of attributes here
  validates_presence_of :name, :photo_url, :position,:goals_scored, :country, :team_id, :rating

  # validate the uniqueness of attributes here
  validates_uniqueness_of :name, :team_id

end
