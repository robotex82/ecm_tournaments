# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ecm_tournaments_tournament, :class => 'Ecm::Tournaments::Tournament' do
    begins_at Time.zone.now + 1.day
    ecm_tournaments_series
    ecm_tournaments_type
  end
end
