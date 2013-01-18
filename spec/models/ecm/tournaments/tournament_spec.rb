require 'spec_helper'

describe Ecm::Tournaments::Tournament do
  context 'associations' do
    it { should belong_to :ecm_tournaments_series }
    it { should belong_to :ecm_tournaments_type }
    it { should have_many :ecm_tournaments_matches }
    it { should have_many :ecm_tournaments_participants }
    it { should have_many :ecm_tournaments_teams }
  end

#  context 'team creation' do
#    it { should respond_to(:create_and_randomize_teams) }

#    it 'should create the correct team count' do
#      tournament = FactoryGirl.create(:ecm_tournaments_tournament)
#      tournament.ecm_tournaments_participants = FactoryGirl.create_list(:ecm_tournaments_participant, 4)
#      tournament.create_and_randomize_teams
#      tournament.ecm_tournaments_teams.count.should eq(2)
#    end

#    it 'should create the correct team count for uneven participants number' do
#      tournament = FactoryGirl.create(:ecm_tournaments_tournament)
#      tournament.ecm_tournaments_participants = FactoryGirl.create_list(:ecm_tournaments_participant, 5)
#      tournament.create_and_randomize_teams
#      tournament.ecm_tournaments_teams.count.should eq(3)
#    end
#  end

#  context 'match generation' do
#    it { should respond_to(:generate_matches) }

#    it 'should generate the correct amount of matches' do
#      tournament = FactoryGirl.create(:ecm_tournaments_tournament)
#      tournament.ecm_tournaments_teams = FactoryGirl.create_list(:ecm_tournaments_team, 8, :ecm_tournaments_tournament => tournament)
#      tournament.generate_matches
#      tournament.ecm_tournaments_matches.count.should eq(7)
#    end
#  end

  context 'validations' do
    it { should validate_presence_of :begins_at }
    it { should validate_presence_of :ecm_tournaments_series }
    it { should validate_presence_of :ecm_tournaments_type }
  end
end

