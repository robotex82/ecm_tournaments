class CreateEcmTournamentsMatches < ActiveRecord::Migration
  def change
    create_table :ecm_tournaments_matches do |t|
      # associations
      t.references :ecm_tournaments_tournament
      t.references :first_team
      t.references :second_team

      # awesome nested set
      t.references :parent
      t.integer :lft
      t.integer :rgt
      t.integer :depth

      t.timestamps
    end
    add_index :ecm_tournaments_matches, :ecm_tournaments_tournament_id
    add_index :ecm_tournaments_matches, :parent_id
    add_index :ecm_tournaments_matches, :first_team_id
    add_index :ecm_tournaments_matches, :second_team_id
  end
end
