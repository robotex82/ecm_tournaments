class CreateEcmTournamentsTeams < ActiveRecord::Migration
  def change
    create_table :ecm_tournaments_teams do |t|
      # associations
      t.references :ecm_tournaments_tournament

      t.timestamps
    end
    add_index :ecm_tournaments_teams, :ecm_tournaments_tournament_id
  end
end
