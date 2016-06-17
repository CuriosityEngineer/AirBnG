class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :bookings

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end

end
