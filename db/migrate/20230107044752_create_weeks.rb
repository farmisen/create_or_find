class CreateWeeks < ActiveRecord::Migration[7.0]
  def change
    create_table :weeks do |t|
      t.string :slug

      t.timestamps
    end
    add_index :weeks, :slug, unique: true
  end
end
