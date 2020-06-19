class CreateRiders < ActiveRecord::Migration[6.0]
  def change
    create_table :riders do |t|
      t.string :name
      t.integer :commute_time
      t.references :bus, null: false, foreign_key: true
      t.boolean :bus_pass

      t.timestamps
    end
  end
end
