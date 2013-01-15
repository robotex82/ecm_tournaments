class CreateEcmTournamentsTeamMemberships < ActiveRecord::Migration
  def change
    create_table :ecm_tournaments_team_memberships do |t|
      t.references :ecm_tournaments_team
      t.references :ecm_tournaments_participant

      t.timestamps
    end
    add_index :ecm_tournaments_team_memberships, :ecm_tournaments_team_id, :name => 'index_ecm_tournaments_team_memberships_on_team_id'
    add_index :ecm_tournaments_team_memberships, :ecm_tournaments_participant_id, :name => 'index_ecm_tournaments_team_memberships_on_participant_id'
  end
end
