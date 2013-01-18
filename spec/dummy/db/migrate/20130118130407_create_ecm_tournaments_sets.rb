class CreateEcmTournamentsSets < ActiveRecord::Migration
  def change
    create_table :ecm_tournaments_sets do |t|
      t.integer :first_team_score
      t.integer :second_team_score

      # associations
      t.references :ecm_tournaments_match

      t.timestamps
    end
    add_index :ecm_tournaments_sets, :ecm_tournaments_match_id
  end
end
