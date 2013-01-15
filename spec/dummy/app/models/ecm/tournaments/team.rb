module Ecm::Tournaments
  class Team < ActiveRecord::Base
    # associations
    belongs_to :ecm_tournaments_tournament, :class_name => Tournament,
                                             :foreign_key => :ecm_tournaments_tournament_id
    has_many :ecm_tournaments_team_memberships, :class_name => TeamMembership,
                                                :foreign_key => :ecm_tournaments_team_id

    # attributes
    # attr_accessible :title, :body

    # validations
    validates :ecm_tournaments_tournament, :presence => true
    # validates :ecm_tournaments_team_memberships, :presence => true
  end
end

