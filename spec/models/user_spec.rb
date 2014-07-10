require 'rails_helper'

describe User do
  let(:albert) { User.new({
      username: "spartan",
      first_name: "Albert",
      last_name: "Bahia",
      email: "albert.bahia1@gmail.com",
      password: "arsenalfc",
      password_confirmation: "arsenalfc"
    }) }

  # Happy Path
  it "is valid with a username, email, and password" do
    expect(albert).to be_valid
  end

# refactor test to ==> it { should validate_presence_of(:attribute) }
  it "is invalid without a username" do
    shelly = User.new({
      first_name: 'sheldon',
      last_name: 'cooper',
      email: 'sheldon@tbbt.com'
    })
    expect(shelly).to have(1).errors_on(:username)
  end

  it "is invalid without a first name" do
    lennard = User.new({
      username: 'len',
      last_name: 'hofstaedter',
      email: 'lennard@tbbt.com'
    })
    expect(lennard).to have(1).errors_on(:first_name)
  end

  it "is invalid without a last name" do
    pen = User.new({
      username: 'penny',
      first_name: 'pennster',
      email: 'penny@tbbt.com'
    })
      expect(pen).to have(1).errors_on(:last_name)
  end

  it "is invalid without an email" do
    raj = User.new({
      username: 'rajster',
      first_name: 'rajesh',
      last_name: 'koothrapali'
    })
    expect(raj).to have(1).errors_on(:email)
  end

  it "is invalid without a password" do
    how = User.new({
      username: 'howie',
      first_name: 'howard',
      last_name: 'wolowitz',
      email: 'howard@tbbt.com'
      })
      expect(how).to have(1).errors_on(:password)
  end

end
