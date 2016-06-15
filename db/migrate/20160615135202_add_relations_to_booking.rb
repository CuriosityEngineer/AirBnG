class AddRelationsToBooking < ActiveRecord::Migration
  def change
    add_reference :bookings, :profile, index: true, foreign_key: true
    add_reference :bookings, :listing, index: true, foreign_key: true
  end
end
