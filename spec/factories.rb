require 'Faker'

FactoryGirl.define do 
  factory :user do
    username { Faker::Internet.user_name}
    password 'foobar'
    password_confirmation 'foobar'
  end
end