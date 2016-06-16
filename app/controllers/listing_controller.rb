class ListingController < ApplicationController
  def index
    @listings1 = Listing.all
    if params[:search]
      @listings = Listing.search(params[:search])
    else
      @listings = []
    end
  end

  def show
  end

  def new
  end

  def edit
  end

  def destroy
  end
end
