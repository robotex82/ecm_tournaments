class CreateEcmTournamentsSeries < ActiveRecord::Migration
  def change
    create_table :ecm_tournaments_series do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
