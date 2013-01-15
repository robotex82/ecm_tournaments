require 'spec_helper'

describe Ecm::Tournaments::Team do
  context 'associations' do
    it { should belong_to :ecm_tournaments_tournament }
    it { should have_many :ecm_tournaments_team_memberships }
  end

  context 'validations' do
    it { should validate_presence_of :ecm_tournaments_tournament }
    # it { should validate_presence_of :ecm_tournaments_team_memberships }    
  end
end
