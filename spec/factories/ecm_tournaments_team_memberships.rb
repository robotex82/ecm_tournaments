# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ecm_tournaments_team_membership, :class => 'Ecm::Tournaments::TeamMembership' do
    ecm_tournaments_team
    ecm_tournaments_participant
  end
end

