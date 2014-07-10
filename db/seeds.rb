# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# require 'pry'
# require_relative '../app/models/user.rb'

usernames = ["arsenal", "manu", "manc", "tottenham"]

first_names =  %w(albert arsene jose)

last_names = %w(wenger bahia mourinho)

emails = %w(albert.bahia1@gmail.com arsene@arsenalfc.com jose@chelseafc.com)

usernames.each do |username|
  User.create(
    {
      username: username,
      first_name: first_names.sample,
      last_name: last_names.sample,
      email: emails.sample
    }
  )
end

teams = [
  {
    name: 'arsenal',
    flag_url: 'http://www.placekitten.com/300/300',
    goals_scored: 3,
    formation: '4-4-2'
  },

  {
    name: 'liverpool',
    flag_url: 'http://www.placekitten.com/300/300',
    goals_scored: 2,
    formation: '4-5-1'
  },

  {
    name: 'tottenham',
    flag_url: 'http://www.placekitten.com/300/300',
    goals_scored: 4,
    formation: '4-3-3'
  }
]

teams.each do |team|
  Team.create(
    {
      name: team[:name],
      flag_url: team[:flag_url],
      goals_scored: team[:goals_scored],
      formation: team[:formation]
    }
  )
end
