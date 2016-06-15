class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :price

      t.timestamps null: false
    end
  end
end
