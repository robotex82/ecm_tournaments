class CreateEcmTournamentsTypes < ActiveRecord::Migration
  def change
    create_table :ecm_tournaments_types do |t|
      t.string :name
      t.text :description
      t.string :class_identifier

      t.timestamps
    end
  end
end
