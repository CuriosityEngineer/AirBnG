class Profile < ActiveRecord::Base
  has_many :listings
  has_many :bookings
  belongs_to :user
end
