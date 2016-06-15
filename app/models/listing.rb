class Listing < ActiveRecord::Base
  belongs_to :profile
  has_many :bookings
end
