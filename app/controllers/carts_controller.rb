class CartsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  def index
    @carts = Cart.all
  end

  def new
    @order = Order.new
    
  end

  def show
    # the_listing_id = params[:id]
    # @listing = Cart.find(the_listing_id)
    # Stripe.api_key = 'sk_test_5VriwPJF8EScOW0VlkIW36p200X2SvMzbP'

    # line_items = @cart.listings.map { |listing|
    #   {
    #     name: listings.title,
    #     amount: listings.price
    #   }
    # }

    # @stripe_checkout_session =  Stripe::Checkout::Session.create(
    #   payment_method_types: ['card'],
    #   line_items: [{
    #     name: @listing.title,
    #     description: @listing.description,
    #     amount: (@listing.price * 100).to_i,
    #     currency: 'aud',
    #     quantity: '1'
    #   }],
    #   success_url: 'http://localhost3000/success',
    #   cancel_url: 'http://localhost3000/cancel',
    # )
  end

  def edit
  end

  def create
    @cart = Cart.new(cart_params)

    if @cart.save
      redirect_to @cart, notice: "Cart was successfully created"

    else
      render :new
    end

  end

  def update
    if @cart.update(cart_params)
      redirect_to @cart, notice: "Cart was successfully updated"
    else
      render :edit
    end
  end


  def destroy
    @cart.destroy if @cart.id == session[:cart_id]
    session[:cart_id] = nil
    redirect_to root_path, notice: "Cart was successfully deleted"
  end


private

  def set_cart
    @cart = Cart.find(params[:id])
  end

  def cart_params
    params.fetch(:cart, {})
  end

  def invalid_cart
    logger.error "Attempt to access invalid cart #{params[:id]}"
    redirect_to root_path, notice: "That cart doesn't exist"
  end

end

