require 'spec_helper'

describe Ecm::Tournaments::Tournament do
  context 'associations' do
    it { should belong_to :ecm_tournaments_series }
    it { should have_many :ecm_tournaments_participants }
  end

  context 'validations' do
    it { should validate_presence_of :begins_at }
    it { should validate_presence_of :ecm_tournaments_series }    
  end
end
