class Game < ActiveRecord::Base
  has_many :locations
  belongs_to :user
end