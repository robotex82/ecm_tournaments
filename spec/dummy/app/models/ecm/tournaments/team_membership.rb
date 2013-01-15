module Ecm::Tournaments
  class TeamMembership < ActiveRecord::Base
    # associations
    belongs_to :ecm_tournaments_team, :class_name => Team,
                                      :foreign_key => :ecm_tournaments_team_id
    belongs_to :ecm_tournaments_participant, :class_name => Participant,
                                             :foreign_key => :ecm_tournaments_participant_id

    # attributes
    # attr_accessible :title, :body

    # validations
    validates :ecm_tournaments_team, :presence => true
    validates :ecm_tournaments_participant, :presence => true    
  end
end
