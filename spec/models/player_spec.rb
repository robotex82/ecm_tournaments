require 'spec_helper'

describe Player do
  context 'validations' do
    it { should validate_presence_of :firstname }
    it { should validate_presence_of :lastname }
    it { should validate_presence_of :email }    
    it { should validate_uniqueness_of :email } 
  end
end
