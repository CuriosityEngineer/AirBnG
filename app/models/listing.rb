class Listing < ActiveRecord::Base
  belongs_to :profile
  has_many :bookings

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end

end
