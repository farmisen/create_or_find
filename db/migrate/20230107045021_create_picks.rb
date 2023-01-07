class CreatePicks < ActiveRecord::Migration[7.0]
  def change
    create_table :picks do |t|
      t.references :season, null: false, foreign_key: true
      t.references :week, null: false, foreign_key: true

      t.timestamps
    end

    add_index :picks, [:season_id, :week_id], unique: true

  end
end
