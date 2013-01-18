require 'spec_helper'

describe Ecm::Tournaments::Set do
  context 'associations' do
    it { should belong_to :ecm_tournaments_match }
  end

  context 'validations' do
    it { should validate_presence_of :ecm_tournaments_match }
    it { should validate_presence_of :first_team_score }
    it { should validate_presence_of :second_team_score }
  end
end
