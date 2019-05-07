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
    @order = Order.new
    the_listing_id = params[:listing_id]
    @listing = Listing.find(the_listing_id)
    Stripe.api_key = 'sk_test_5VriwPJF8EScOW0VlkIW36p200X2SvMzbP'

    @stripe_checkout_session =  Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: @listing.title,
        description: @listing.description,
        amount: (@listing.price * 100).to_i,
        currency: 'aud',
        quantity: '1'
      }],
      success_url: 'http://localhost3000/success',
      cancel_url: 'http://localhost3000/cancel',
    )

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
