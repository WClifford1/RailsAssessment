class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :set_cart, only: [:create]

  def index
    @orders = Order.all
  end

  def show
  end


  def new
  end

  def create
    listing = Listing.find(params[:listing_id])
    @order = @cart.add_listing(listing)
      if @order.save
        redirect_to @order.cart, notice: "Item added to cart"
      else
        render :new
      end
  end

  def update
    if @order.update(order_params)
      redirect_to @order, notice: "Order was successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @cart = Cart.find(session[:cart_id])
    @order.destroy
    redirect_to cart_path(@cart), notice: "Item was successfully removed"
  end

private

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:listing_id)
  end
  
end
