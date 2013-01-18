module Ecm::Tournaments
  class Type < ActiveRecord::Base
    # associations
    has_many :ecm_tournaments_tournaments, :class_name => Tournament,
                                           :foreign_key => :ecm_tournaments_type_id

    # attributes
    attr_accessible :class_identifier,
                  :description,
                  :name

    # validations
    validates :class_identifier, :presence => true,
                                 :uniqueness => true
    validates :name, :presence => true,
                     :uniqueness => true

  end
end
