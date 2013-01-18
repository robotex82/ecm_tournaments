module Ecm::Tournaments
  class Set < ActiveRecord::Base
    # associations
    belongs_to :ecm_tournaments_match, :class_name => Match,
                                       :foreign_key => :ecm_tournaments_match_id

    # attributes
    attr_accessible :first_team_score,
                    :second_team_score

    # validations
    validates :ecm_tournaments_match, :presence => true
    validates :first_team_score, :presence => true
    validates :second_team_score, :presence => true
  end
end
