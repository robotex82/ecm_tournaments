#require 'spec_helper'

#module Ecm::Tournaments::MatchGenerators
#  describe SingleKnockOut do
#    subject { SingleKnockOut.new([]) }
#    it { should respond_to(:matches) }

#    it 'should generate no matches for one team' do
#      tournament = FactoryGirl.create(:ecm_tournaments_tournament)
#      teams = [FactoryGirl.create(:ecm_tournaments_team, :ecm_tournaments_tournament => tournament)]
#      SingleKnockOut.new(teams).matches.size.should eq(0)
#    end

#    it 'should generate one match for two teams' do
#      tournament = FactoryGirl.create(:ecm_tournaments_tournament)
#      teams = FactoryGirl.create_list(:ecm_tournaments_team, 2, :ecm_tournaments_tournament => tournament)
#      SingleKnockOut.new(teams).matches.size.should eq(1)
#    end

#    it 'should generate three matches for three teams' do
#      tournament = FactoryGirl.create(:ecm_tournaments_tournament)
#      teams = FactoryGirl.create_list(:ecm_tournaments_team, 3, :ecm_tournaments_tournament => tournament)
#      SingleKnockOut.new(teams).matches.size.should eq(3)
#    end

#    it 'should generate three matches for four teams' do
#      tournament = FactoryGirl.create(:ecm_tournaments_tournament)
#      teams = FactoryGirl.create_list(:ecm_tournaments_team, 4, :ecm_tournaments_tournament => tournament)
#      SingleKnockOut.new(teams).matches.size.should eq(3)
#    end

#    it 'should generate three matches for four teams' do
#      tournament = FactoryGirl.create(:ecm_tournaments_tournament)
#      teams = FactoryGirl.create_list(:ecm_tournaments_team, 5, :ecm_tournaments_tournament => tournament)
#      SingleKnockOut.new(teams).matches.size.should eq(3)
#    end
#  end
#end

