class User < ActiveRecord::Base

  has_many :teams

  has_secure_password
  validates_presence_of :username, :first_name, :last_name, :email
  validates_uniqueness_of :username, :email

end
