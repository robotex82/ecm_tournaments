require 'spec_helper'

describe Ecm::Tournaments::Participant do
  context 'associations' do
    it { should belong_to :ecm_tournaments_tournament }
    it { should belong_to :participable }
    it { should have_many :ecm_tournaments_team_memberships }
  end

  context 'validations' do
    it { should validate_presence_of :ecm_tournaments_tournament }
    it { should validate_presence_of :participable }    
    # TODO: fix "wrong constant name 0" error in spec
    # it { should validate_uniqueness_of(:ecm_tournaments_tournament_id).scoped_to(:participable_type, :participable_id) }        
  end
end

