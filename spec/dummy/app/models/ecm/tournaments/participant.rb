module Ecm::Tournaments
  class Participant < ActiveRecord::Base
    # associations
    belongs_to :ecm_tournaments_tournament, :class_name => Tournament,
                                            :foreign_key => :ecm_tournaments_tournament_id
    belongs_to :participable, :polymorphic => true
    has_many :ecm_tournaments_team_memberships, :class_name => TeamMembership,
                                                :foreign_key => :ecm_tournaments_participant_id

    # attributes
    # attr_accessible :title, :body

    # validations
    validates :ecm_tournaments_tournament, :presence => true
    validates :participable, :presence => true
    validates :ecm_tournaments_tournament_id, :uniqueness => { :scope => [ :participable_type, :participable_id ] }
  end
end

