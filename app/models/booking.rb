class Booking < ActiveRecord::Base
  belongs_to :listings
  belongs_to :user

end
