class User < ActiveRecord::Base
  has_many :wolves
  has_secure_password
  validates_presence_of :username, :password_digest, :password_confirmation
end