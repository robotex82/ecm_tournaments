module Ecm::Tournaments::MatchGenerators
  class SingleKnockOut
    attr_accessor :teams, :matches

    @matches = nil
    @teams   = nil

    def initialize(teams = [])
      @teams = teams
    end

    def matches
      @matches = generate_matches unless @matches
      return @matches
    end

    private

    def generate_matches
#      matches_on_round = (@teams.count / 2).ceil
#      parent_matches = []
#      while matches_on_round < 
#        parent_matches = generate_next_round(parent_matches)
#      end
      return [] if teams.count <= 1
      return [Ecm::Tournaments::Match.new] if teams.count == 2

      tier_matches = [Ecm::Tournaments::Match.new]
      all_matches = tier_matches
      while tier_matches.count <= (@teams.count / 2).ceil
        tier_matches = generate_next_round(tier_matches)
        all_matches << tier_matches
      end
      return all_matches
    end

    def generate_next_round(parent_matches)
      matches = []
      parent_matches.each do |parent_match|
        2.times do
          matches << Ecm::Tournaments::Match.new(:parent => parent_match)
        end
      end
      return matches
    end
  end
end
