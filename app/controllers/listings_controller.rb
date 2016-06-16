class ListingsController < ApplicationController
  def index
    @listings1 = Listing.all
    if params[:search]
      @listings = Listing.search(params[:search])
    else
      @listings = []
    end
  end

  def show
    @listing = Listing.find( params[:id] )

  end

  def new
    @listing = Listing.new
  end

  def edit
  end

  def destroy
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user_id = current_user.id if current_user
    if @listing.save
      redirect_to user_profile_path
    else
      render :new
    end
  end

  private

  def listing_params
    params.require( :listing ).permit( :name, :description, :players, :difficulty, :price, :avatar, :user_id)
  end
end
