require 'rails_helper'

describe Team do
  let(:gunners) { Team.new(
    {
      name: 'arsenalfc',
      flag_url: 'http://www.placekitten.com/300/300',
      goals_scored: 9,
      formation: '4-4-2',
    }
  )
  }

  it "is valid with a name, flag url, goals scored, and formation" do
    expect(gunners).to be_valid
  end

  it "is invalid without name" do
    spurs = Team.new({
      flag_url: 'http://www.placekitten.com/300/300',
      goals_scored: 2,
      formation: '4-5-1'
    })
    expect(spurs).to have(1).errors_on(:name)
  end

  it "is invalid without a flag_url" do
    reds = Team.new({
      name: 'blah',
      goals_scored: 3,
      formation: '4-3-3'
    })
    expect(reds).to have(1).errors_on(:flag_url)
  end

  it "is invalid without a goals scored" do
    blues = Team.new({
      name: 'blag',
      flag_url: 'http://www.placekitten.com/300/300',
      formation: '4-4-2',
    })
    expect(blues).to have(1).errors_on(:goals_scored)
  end

  it "is invalid without a formation" do
    blancos = Team.new({
      name: 'bloop',
      flag_url: 'http://www.placekitten.com/300/300',
      goals_scored: 4
    })
    expect(blancos).to have(1).errors_on(:formation)
  end

end
