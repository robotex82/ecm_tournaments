module Ecm::Tournaments
  class Match < ActiveRecord::Base
    # associations
    belongs_to :ecm_tournaments_tournament, :class_name => Tournament,
                                            :foreign_key => :ecm_tournaments_tournament_id
    belongs_to :parent
    belongs_to :first_team, :class_name => Team,
                            :foreign_key => :first_team_id
    belongs_to :second_team, :class_name => Team,
                            :foreign_key => :second_team_id

    has_many :ecm_tournaments_sets, :class_name => Set,
                                    :foreign_key => :ecm_tournaments_match_id

    # attributes
    attr_accessible :depth,
                    :first_team_score,
                    :parent,
                    :second_team_score

    # tree support
    acts_as_nested_set

    # validations
    validates :ecm_tournaments_tournament, :presence => true
    validates :first_team, :presence => true, :on => :update
    validates :second_team, :presence => true, :on => :update
  end
end
