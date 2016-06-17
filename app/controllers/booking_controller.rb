class BookingController < ApplicationController
  def show
  end

  def create
    @listing = Listing.find_by(params[:id])
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id if current_user
    @booking.listing_id =

    if @booking.save
      redirect_to booking_path, notice: "Thank you for booking!"
    else
      redirect_to listings_path
    end
  end

  def new
    @booking = Booking.new
  end

  def edit
  end

  def destroy
  end

private

  def booking_params
    params.require( :booking ).permit( :name, :price, :start_date, :end_date, :user_id, :listing_id)
  end
end
