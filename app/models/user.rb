class User < ActiveRecord::Base
<<<<<<< HEAD
  has_secure_password
  validates_presence_of :username, :password_digest, :password_confirmation
=======
  validates_presence_of :username, :password, :email
  before_create :create_remember_token

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
>>>>>>> 862db1eee2ede679d8116374a2f6acc9020e1842
end