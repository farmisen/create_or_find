class CreateSimPicks < ActiveRecord::Migration[7.0]
  def change
    create_table :sim_picks do |t|
      t.integer :sim_user_season_id
      t.integer :week_id

      t.timestamps
    end

    add_index :sim_picks, [:sim_user_season_id, :week_id], unique: true
  end
end
