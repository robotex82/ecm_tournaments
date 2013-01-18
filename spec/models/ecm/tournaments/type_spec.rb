require 'spec_helper'

describe Ecm::Tournaments::Type do
  context 'associations' do
    it { should have_many :ecm_tournaments_tournaments }
  end

  context 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :class_identifier }
    it { should validate_uniqueness_of :name }
    it { should validate_uniqueness_of :class_identifier }
  end
end
