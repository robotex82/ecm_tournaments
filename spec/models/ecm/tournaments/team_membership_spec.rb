require 'spec_helper'

describe Ecm::Tournaments::TeamMembership do
  context 'associations' do
    it { should belong_to :ecm_tournaments_team }
    it { should belong_to :ecm_tournaments_participant }
  end

  context 'validations' do
    it { should validate_presence_of :ecm_tournaments_team }
    it { should validate_presence_of :ecm_tournaments_participant }    
  end
end
