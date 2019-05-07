class OrdersController < ApplicationController
  def show
  end

  def index
  end

  def new
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

  def destroy
  end

  def update
  end

  def create
  end
end
