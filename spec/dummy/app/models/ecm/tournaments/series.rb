module Ecm::Tournaments
  class Series < ActiveRecord::Base
    # associations
    has_many :ecm_tournaments_tournaments, :class_name => Tournament,
                                           :foreign_key => 'ecm_tournaments_series_id'

    # attributes
    attr_accessible :description, :name

    # validations
    validates :name, :presence => true,
                     :uniqueness => true
  end
end

