class CreateEcmTournamentsTournaments < ActiveRecord::Migration
  def change
    create_table :ecm_tournaments_tournaments do |t|
      t.timestamp :begins_at
      t.timestamp :ends_at
      t.text :description

      # associations
      t.references :ecm_tournaments_series
      t.references :ecm_tournaments_type

      t.timestamps
    end
    add_index :ecm_tournaments_tournaments, :ecm_tournaments_series_id
    add_index :ecm_tournaments_tournaments, :ecm_tournaments_type_id
  end
end

