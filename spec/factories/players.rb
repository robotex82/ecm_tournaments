# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :player do
    firstname "John"
    lastname "Doe"
    sequence(:email) { |i| "player_#{i}@example.com" }
  end
end
