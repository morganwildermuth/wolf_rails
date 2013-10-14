class User < ActiveRecord::Base
  has_secure_password
  has_many :wolves
  validates_presence_of :username, :password_digest, :password_confirmation
end