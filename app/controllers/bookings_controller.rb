class BookingsController < ApplicationController
  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id if current_user
    @booking.listing_id = :listing_id

    if @booking.save
      redirect_to listings_path, notice: "Thank you for booking!"
    else
      redirect_to listings_path
    end
  end

  def new
    @booking = Booking.new
    @listing = Listing.find(params[:listing_id])
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
