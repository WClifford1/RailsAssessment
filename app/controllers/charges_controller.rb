class ChargesController < ApplicationController
    include CurrentCart
    after_action :destroy_cart, only: [:create]

def new
end

def create
@amount = @cart.total_price

customer = Stripe::Customer.create({
    email: params[:stripeEmail],
    source: params[:stripeToken],

})

charge = Stripe::Charge.create({
    customer: customer.id,
    amount: @amount,
    description: 'Rails stripe customer',
    currency: 'aud',
})

rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
end
end

private

def destroy_cart
    @cart.destroy 
  end