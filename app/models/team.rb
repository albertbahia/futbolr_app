class Team < ActiveRecord::Base
  belongs_to :user
  has_many :players

  # validates_presence_of :name, :flag_url, :goals_scored, :formation
  validates_presence_of :name, :flag_url, :goals_scored, :formation



end
