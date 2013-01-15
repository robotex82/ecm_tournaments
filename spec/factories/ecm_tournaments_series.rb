# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ecm_tournaments_series, :class => 'Ecm::Tournaments::Series' do
    sequence(:name) { |i| "Serie ##{i}" }
  end
end

