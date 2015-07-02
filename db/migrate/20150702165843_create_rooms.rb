class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :rate
      t.integer :number
      t.integer :hotel_id

      t.timestamps(null: false)
    end
  end
end
