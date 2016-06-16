class MoveListingsAndBookingsToUser < ActiveRecord::Migration
  def change
    remove_column :listings, :profile_id
    remove_column :bookings, :profile_id

    add_reference :listings, :user, index: true, foreign_key: true
    add_reference :bookings, :user, index: true, foreign_key: true
  end
end
