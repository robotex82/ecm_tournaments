# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ecm_tournaments_team, :class => 'Ecm::Tournaments::Team' do
    ecm_tournaments_tournament
    # after_create { |team| team.ecm_tournaments_team_memberships = FactoryGirl.create_list(:ecm_tournaments_team_memberships, 2, :ecm_tournaments_team => team) }
  end
end
