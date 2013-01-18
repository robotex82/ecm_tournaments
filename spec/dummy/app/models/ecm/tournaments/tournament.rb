module Ecm::Tournaments
  class Tournament < ActiveRecord::Base
    # associations
    belongs_to :ecm_tournaments_series, :class_name => Series,
                                        :foreign_key => :ecm_tournaments_series_id
    belongs_to :ecm_tournaments_type, :class_name => Type,
                                      :foreign_key => :ecm_tournaments_type_id
    has_many :ecm_tournaments_matches, :class_name => Match,
                                       :foreign_key => :ecm_tournaments_tournament_id
    has_many :ecm_tournaments_participants, :class_name => Participant,
                                            :foreign_key => :ecm_tournaments_tournament_id
    has_many :ecm_tournaments_teams, :class_name => Team,
                                     :foreign_key => :ecm_tournaments_tournament_id

    # attributes
    attr_accessible :begins_at,
                    :description,
                    :ends_at

    # validations
    validates :begins_at, :presence => true
    validates :ecm_tournaments_series, :presence => true
    validates :ecm_tournaments_type, :presence => true

#    # methods
#    def create_and_randomize_teams
#      shuffled_participants = ecm_tournaments_participants.shuffle
#      team_count = shuffled_participants.count.to_f / 2
#      team_count.ceil.times do
#        ecm_tournaments_teams.create! do |team|
#          team.ecm_tournaments_team_memberships << TeamMembership.new(:ecm_tournaments_participant => shuffled_participants.pop, :ecm_tournaments_team => team)
#          team.ecm_tournaments_team_memberships << TeamMembership.new(:ecm_tournaments_participant => shuffled_participants.pop, :ecm_tournaments_team => team) if shuffled_participants.count > 0
#        end
#      end
#    end

#    def generate_matches
#      match_generator = MatchGenerators::SingleKnockOut.new(self.ecm_tournaments_teams)
#      self.ecm_tournaments_matches = match_generator.matches
#    end
  end
end

