class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :landing]

  def index
     @listings = Listing.all.order("created_at desc")
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = current_user.listings.build
  end

  def create
    @listing = current_user.listings.build(listing_params)
    # render plain: listing.inspect
    # @listing.image.attach(params[:listing][:image])
    # @listing.user = current_user
    if @listing.save
      redirect_to listings_path, notice: 'Listing successfully created' 
    else
      render :new
    end
  end

  def update
    if @listing.update(listing_params)
      redirect_to @listing, notice: "Listing was successfully updated"
    else
      render :edit
    end
  end

  def edit


  end

  def destroy
    @listing.destroy
    redirect_to listings_path, notice: 'Listing successfully deleted'
end

end

private

def set_listing
  @listing = Listing.find(params[:id])
end

def listing_params
  params.required(:listing).permit( :title, :price, :description, :address, :city, :state, :country, :image)
end