# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user, :aliases => [:creator] do
    name  { Faker::Name.name }
    email { Faker::Internet.email }
    password 'letmein'
  end
end
