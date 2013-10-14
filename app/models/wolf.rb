class Wolf < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :name, :age, :gender
end