class CreateSeasons < ActiveRecord::Migration[7.0]
  def change
    create_table :seasons do |t|
      t.string :slug

      t.timestamps
    end
    add_index :seasons, :slug, unique: true
  end
end
