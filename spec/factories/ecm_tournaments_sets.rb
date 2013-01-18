# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ecm_tournaments_set, :class => 'Ecm::Tournaments::Set' do
    ecm_tournaments_match
    first_team_score 0
    second_team_score 0
  end
end
