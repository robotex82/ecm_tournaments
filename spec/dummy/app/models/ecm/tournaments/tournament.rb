module Ecm::Tournaments
  class Tournament < ActiveRecord::Base
    # associations
    belongs_to :ecm_tournaments_series, :class_name => Series,
                                        :foreign_key => :ecm_tournaments_series_id
    has_many :ecm_tournaments_participants, :class_name => Participant,
                                            :foreign_key => :ecm_tournaments_tournament_id

    # attributes
    attr_accessible :begins_at,
                    :description,
                    :ends_at

    # validations
    validates :begins_at, :presence => true
    validates :ecm_tournaments_series, :presence => true
  end
end

