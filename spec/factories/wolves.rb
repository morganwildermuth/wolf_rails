# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :wolf do
    name "MyString"
    age 1
    gender "MyString"
    health 1
    user nil
  end
end
