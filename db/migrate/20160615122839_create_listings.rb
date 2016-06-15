class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :price
      t.string :name
      t.string :avatar
      t.datetime :start_date
      t.datetime :end_date
      t.text :description
      t.integer :difficulty
      t.integer :players

      t.timestamps null: false
    end
  end
end
