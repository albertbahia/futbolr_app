# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = [
  {
    username: 'the_great_one',
    first_name: 'arsene',
    last_name: 'wenger',
    email: 'arsene@arsenal.com',
    password_digest: 'DGSAJKF3432943i4sdafjl#$@#',
    teams: [
      {
        name: 'gunners',
        flag_url: 'http://www.placekitten.com/300/300',
        goals_scored: 4,
        formation: '4-5-1',
        players:
        [
          {
            name: 'mesut ozil',
            photo_url: 'http://www.placekitten.com/300/300',
            position: 'midfielder',
            goals_scored: 10,
            country: 'germany',
            rating: 96
          }
        ]
      }
    ]
  },

  {
    username: 'fergy',
    first_name: 'sir alex',
    last_name: 'ferguson',
    email: 'fergy@manu.com',
    password_digest: '328492fjdskj#@fsdjd',
    teams: [
      {
        name: 'reds',
        flag_url: 'http://www.placekitten.com/300/300',
        goals_scored: 5,
        formation: '4-4-2',
        players:
        [
          {
            name: 'lukas podolski',
            photo_url: 'http://www.placekitten.com/300/300',
            position: 'forward',
            goals_scored: 8,
            country: 'germany',
            rating: 95
          }
        ]
      }
    ]
  },

  {
    username: 'the_blessed_one',
    first_name: 'jose',
    last_name: 'mourinho',
    email: 'jose@chelsea.com',
    password_digest: 'jsfdigf@!#$@jfSDFAFD',
    teams: [
      {
        name: 'blues',
        flag_url: 'http://www.placekitten.com/300/300',
        goals_scored: 4,
        formation: '4-3-3',
        players:
        [
          {
            name: 'per mertesacker',
            photo_url: 'http://www.placekitten.com/300/300',
            position: 'defender',
            goals_scored: 3,
            country: 'germany',
            rating: 93
          }
        ]
      }
    ]
  }
]


users.each do |user|
  cur_user = User.create({
      username: user[:username],
      first_name: user[:first_name],
      last_name: user[:last_name],
      email: user[:email],
      password_digest: user[:password_digest]
  })

  user[:teams].each do |team|
    cur_team = Team.create({
     name: team[:name],
     flag_url: team[:flag_url],
     goals_scored: team[:goals_scored],
     formation: team[:formation],
     user_id: cur_user.id
    })

    team[:players].each do |player|
      Player.create({
        name: player[:name],
        photo_url: player[:photo_url],
        position: player[:position],
        goals_scored: player[:goals_scored],
        country: player[:country],
        team_id: cur_team.id,
        rating: player[:rating]
      })
    end
  end
end
