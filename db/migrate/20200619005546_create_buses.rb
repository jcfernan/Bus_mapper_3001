class CreateBuses < ActiveRecord::Migration[6.0]
  def change
    create_table :buses do |t|
      t.string :tag, null: false
      t.string :current_route
      t.string :driver
      t.integer :capacity, null: false

      t.timestamps
    end
  end
end
