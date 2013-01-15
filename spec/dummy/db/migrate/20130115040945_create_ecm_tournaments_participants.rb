class CreateEcmTournamentsParticipants < ActiveRecord::Migration
  def change
    create_table :ecm_tournaments_participants do |t|
      t.references :ecm_tournaments_tournament
      t.references :participable, :polymorphic => true

      t.timestamps
    end
    add_index :ecm_tournaments_participants, :ecm_tournaments_tournament_id, :name => 'index_ecm_tournaments_participants_on_tournament_id'
    add_index :ecm_tournaments_participants, [:participable_type, :participable_id], :name => 'index_ecm_tournaments_participants'
  end
end
