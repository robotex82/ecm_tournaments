# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ecm_tournaments_match, :class => 'Ecm::Tournaments::Match' do
    ecm_tournaments_tournament
    association(:first_team, :factory => :ecm_tournaments_team)
    association(:second_team, :factory => :ecm_tournaments_team)
  end
end
