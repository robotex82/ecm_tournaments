require 'spec_helper'

describe Ecm::Tournaments::Match do
  context 'associations' do
    it { should have_many :ecm_tournaments_sets }
    it { should belong_to :ecm_tournaments_tournament }
    it { should belong_to :first_team }
    it { should belong_to :second_team }
  end

  context 'validations' do
    it { should validate_presence_of :ecm_tournaments_tournament }
    # TODO: Test on update
    # it { should validate_presence_of :first_team }
    # it { should validate_presence_of :second_team }
  end
end
