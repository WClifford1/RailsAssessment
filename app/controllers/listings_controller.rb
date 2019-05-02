class ListingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @listing = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
   
    
  end

  def new
    @listing = Listing.new
  end

  def create
    listing = Listing.new(listing_params)
    # render plain: listing.inspect
    listing.user = current_user
    if listing.save
      redirect_to listings_path
    else
      render :new
    end
  end

  def edit
  end
end

private

def listing_params

  params.required(:listing).permit(:title, :price, :description, :address, :city, :state, :country)

end