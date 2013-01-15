# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ecm_tournaments_participant, :class => 'Ecm::Tournaments::Participant' do
    ecm_tournaments_tournament
    association :participable, :factory => :player
  end
end
