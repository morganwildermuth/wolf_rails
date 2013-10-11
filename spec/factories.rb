require 'Faker'

FactoryGirl.define do 
  factory :user do
    username { Faker::Internet.user_name}
    email "morg@gmail.com"
    password 'foobar'
  end
end