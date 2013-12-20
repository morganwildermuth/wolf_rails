class User < ActiveRecord::Base
  has_one :game
  has_many :wolves
  has_secure_password
  validates_presence_of :username, :password_digest, :password_confirmation
  validates_uniqueness_of :username
end