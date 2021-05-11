class ListingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  before_action :set_listing, only: [:show]
  def index
    @listings = Listing.active
  end

  def new
    @listing = Listing.new
  end

  def edit
  end

  def create 
    @listing = current_user.listings.new(listing_params)
    @listing.status = 1
    if @listing.save 
      redirect_to @listing
    else 
      render :new
    end
  end 

  def show
    # @listing = Listing.find(params[:id])
  end

  private 

  def listing_params
    params.require(:listing).permit(:industry, :task, :price, :images)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
